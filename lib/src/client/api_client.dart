import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;

import '../constants.dart';
import '../exceptions.dart';
import '../extensions.dart';
import '../model.dart';
import 'auth_client.dart';
import 'base_client.dart';

Map<String, String> _listToQuery(List<String> list, String name) {
  final queries = <String, String>{};
  for (var i = 0; i < list.length; i++) {
    queries.addAll({'$name[$i]': list[i]});
  }
  return queries;
}

class ApiClient extends BaseClient {
  ApiClient(this.userAccount, this.innerClient);

  static Future<ApiClient> loginWithUserAccountJson(
    JsonMap json,
    http.Client client,
  ) async {
    final authClient = AuthClient();
    final userAccount = UserAccount.fromJson(json);
    if (userAccount.isActive()) {
      return ApiClient(userAccount, client);
    } else {
      final refreshUserAccount =
          await authClient.refreshAccount(userAccount.refreshToken);
      return ApiClient(refreshUserAccount, client);
    }
  }

  static Future<ApiClient> loginWithRefreshToken(
    String refreshToken,
    http.Client client,
  ) async {
    final userAccount = await AuthClient().refreshAccount(refreshToken);
    return ApiClient(userAccount, client);
  }

  UserAccount userAccount;
  ClientUser get user => userAccount.user;
  http.Client innerClient;
  Map<String, String> get defaultHeader => <String, String>{
        'app-os': 'ios',
        'app-os-version': '16.1',
        'User-Agent': 'PixivIOSApp/7.16.3 (iOS 16.1; iPad11,3)',
        'Authorization': 'Bearer ${userAccount.accessToken}'
      };

  Future<void> refreshAccount() async {
    userAccount = await AuthClient().refreshAccount(userAccount.refreshToken);
  }

  Future<Map<String, String>> getRefreshedHeader() async {
    if (!userAccount.isActive()) {
      await refreshAccount();
      defaultHeader['Authorization'] = 'Bearer ${userAccount.accessToken}';
    }
    return defaultHeader;
  }

  @override
  JsonMap parse(http.Response response) {
    final json = jsonDecode(response.body) as JsonMap;
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return json;
    }

    final String errorMessage;
    if (json.containsKey('error')) {
      // ignore: avoid_dynamic_calls
      errorMessage = json['error']['message'] as String? ?? '';
    } else {
      errorMessage = '';
    }

    if (statusCode == 400 && !userAccount.isActive()) {
      throw OAuthProcessException(errorMessage, response);
    } else if (statusCode == 403) {
      throw Forbidden(errorMessage, response, statusCode);
    } else if (statusCode == 404) {
      throw NotFound(errorMessage, response, statusCode);
    } else if (statusCode == 429) {
      throw RateLimited(errorMessage, response, statusCode);
    } else if (statusCode ~/ 100 == 5) {
      throw PixivServerError(
        errorMessage,
        response,
        statusCode,
      );
    } else {
      throw PixivHttpException(errorMessage, response, statusCode);
    }
  }

  // illust
  Future<void> addIllustBookmark(
    int illustId, {
    Restrict restrict = Restrict.public,
    List<String>? tags,
  }) async {
    final url = Uri.https(apiHostname, '/v2/illust/bookmark/add');
    final body = <String, String>{
      'illust_id': illustId.toString(),
      'restrict': restrict.name
    };
    if (tags != null) {
      body.addAll(
        _listToQuery(
          tags,
          'tags',
        ),
      );
    }
    final header = await getRefreshedHeader();
    final response = await innerClient.post(url, headers: header, body: body);
    parse(response);
  }

  Future<void> deleteIllustBookmark(int illustId) async {
    final url = Uri.https(apiHostname, '/v1/illust/bookmark/delete');
    final body = <String, String>{'illust_id': illustId.toString()};
    final header = await getRefreshedHeader();
    final response = await innerClient.post(url, headers: header, body: body);
    parse(response);
  }

  Future<BookmarkDetail> fetchIllustBookmarkedDetail(int illustId) async {
    final body = <String, String>{'illust_id': illustId.toString()};
    final url = Uri.https(apiHostname, '/v2/illust/bookmark/detail', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return BookmarkDetail.fromJson(
      jsonResponse['bookmark_detail'] as JsonMap,
    );
  }

  Future<Illust> fetchIllustDetail(int illustId) async {
    final body = <String, String>{
      'filter': 'for_ios',
      'illust_id': illustId.toString()
    };
    final url = Uri.https(apiHostname, '/v1/illust/detail', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illust.fromJson(jsonResponse['illust'] as JsonMap);
  }

  Future<Illusts> fetchIllustRanking({
    IllustRankingMode? mode,
    int? offset,
    DateTime? date,
  }) async {
    final body = <String, String?>{
      'mode': mode?.toSnakeCaseString(),
      'offset': offset?.toString(),
      'date': date?.toDateString()
    }..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, '/v1/illust/ranking', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchLatestIllustByFollowing(
    FollowingRestrict restrict,
  ) async {
    final body = <String, String>{'restrict': restrict.name};
    final url = Uri.https(apiHostname, '/v2/illust/follow', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchLatestIllustByMyPixiv({int? offset}) async {
    final body = <String, String?>{'offset': offset?.toString()}
      ..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, 'v2/illust/mypixiv', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchLatestIllusts({
    IllustContentType contentType = IllustContentType.illust,
    int? maxIllustId,
  }) async {
    final body = <String, String?>{
      'content_type': contentType.name,
      'max_illust_id': maxIllustId?.toString()
    }..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, 'v1/illust/new', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchRecommendedIllusts({
    int? offset,
    int? minBookmarkIdForRecentIllust,
    int? maxBookmarkIdForRecommend,
    List<int>? viewed,
  }) async {
    final body = <String, String?>{
      'include_ranking_illusts': false.toString(),
      'include_privacy_policy': false.toString(),
      'offset': offset?.toString(),
      'min_bookmark_id_for_recent_illust':
          minBookmarkIdForRecentIllust?.toString(),
      'max_bookmark_id_for_recommend': maxBookmarkIdForRecommend?.toString()
    }..removeWhere((key, value) => value == null);
    if (viewed != null) {
      body.addAll(
        _listToQuery(
          viewed.map<String>((e) => e.toString()).toList(),
          'viewed',
        ),
      );
    }
    final url = Uri.https(apiHostname, 'v1/illust/recommended', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchRelatedIllust(
    int illustId, {
    List<int>? seedIllustId,
    List<int>? viewed,
  }) async {
    final body = <String, String>{'illust_id': illustId.toString()};
    if (seedIllustId != null) {
      body.addAll(
        _listToQuery(
          seedIllustId.map<String>((e) => e.toString()).toList(),
          'seed_illust_id',
        ),
      );
    }
    if (viewed != null) {
      body.addAll(
        _listToQuery(
          viewed.map<String>((e) => e.toString()).toList(),
          'viewed',
        ),
      );
    }
    final url = Uri.https(apiHostname, 'v2/illust/related', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  // live
  // manga
  // novel
  Future<void> addNovelBookmark(
    int novelId, {
    Restrict restrict = Restrict.public,
    List<String>? tags,
  }) async {
    final url = Uri.https(apiHostname, 'v2/novel/bookmark/add');
    final body = <String, String>{
      'novel_id': novelId.toString(),
      'restrict': restrict.name
    };
    if (tags != null) {
      body.addAll(
        _listToQuery(
          tags,
          'tags',
        ),
      );
    }
    final header = await getRefreshedHeader();
    final response = await innerClient.post(url, headers: header, body: body);
    parse(response);
  }

  Future<void> deleteNovelBookmark(int novelId) async {
    final url = Uri.https(apiHostname, 'v1/novel/bookmark/delete');
    final body = <String, String>{'novel_id': novelId.toString()};
    final header = await getRefreshedHeader();
    final response = await innerClient.post(url, headers: header, body: body);
    parse(response);
  }

  Future<BookmarkDetail> fetchNovelBookmarkedDetail(int novelId) async {
    final body = <String, String>{'novel_id': novelId.toString()};
    final url = Uri.https(apiHostname, '/v2/novel/bookmark/detail', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return BookmarkDetail.fromJson(
      jsonResponse['bookmark_detail'] as JsonMap,
    );
  }

  Future<Novel> fetchNovelDetail(int novelId) async {
    final body = <String, String>{'novel_id': novelId.toString()};
    final url = Uri.https(apiHostname, '/v2/novel/detail', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novel.fromJson(jsonResponse['novel'] as JsonMap);
  }

  Future<Novels> fetchLatestNovelsByFollowing({
    FollowingRestrict restrict = FollowingRestrict.all,
    int? offset,
  }) async {
    final body = <String, String?>{
      'restrict': restrict.name,
      'offset': offset?.toString()
    }..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, 'v1/novel/follow', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novels.fromJson(jsonResponse);
  }

  Future<Novels> fetchLatestNovelsByMyPixiv({int? offset}) async {
    final body = <String, String?>{'offset': offset?.toString()}
      ..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, 'v1/novel/mypixiv', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novels.fromJson(jsonResponse);
  }

  Future<Novels> fetchLatesNovels({int? maxNovelId}) async {
    final body = <String, String?>{'max_novel_id': maxNovelId?.toString()}
      ..removeWhere((key, value) => value == null);
    final url = Uri.https(apiHostname, 'v1/novel/new', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novels.fromJson(jsonResponse);
  }

  // search
  // spotlight
  // trending-tags

  // ugoira
  Future<UgoiraMetadata> fetchUgoiraMetadata(int illustId) async {
    final body = <String, String>{'illust_id': illustId.toString()};
    final url = Uri.https(apiHostname, '/v1/ugoira/metadata', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return UgoiraMetadata.fromJson(
      jsonResponse['ugoira_metadata'] as JsonMap,
    );
  }

  // user

  Future<UserDetail> fetchUserDetail(int userId) async {
    final body = <String, String>{
      'filter': 'for_ios',
      'user_id': userId.toString()
    };
    final url = Uri.https(apiHostname, '/v1/user/detail', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return UserDetail.fromJson(jsonResponse);
  }

  Future<Illusts> fetchUserIllustBookmarks(
    int userId,
    Restrict restrict, [
    int? maxBookmarkId,
  ]) async {
    final body = <String, String>{
      'user_id': userId.toString(),
      'restrict': restrict.name,
      if (maxBookmarkId != null) 'max_bookmark_id': maxBookmarkId.toString(),
    };
    final url = Uri.https(apiHostname, '/v1/user/bookmarks/illust', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Illusts> fetchUserIllustBookmarksByNextUrl(
    String nextUrl,
  ) async {
    final url = Uri.parse(nextUrl);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Illusts.fromJson(jsonResponse);
  }

  Future<Novels> fetchUserNovelBookmarks(
    int userId,
    Restrict restrict, [
    int? maxBookmarkId,
  ]) async {
    final body = <String, String>{
      'user_id': userId.toString(),
      'restrict': restrict.name,
      if (maxBookmarkId != null) 'max_bookmark_id': maxBookmarkId.toString(),
    };
    final url = Uri.https(apiHostname, '/v1/user/bookmarks/novel', body);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novels.fromJson(jsonResponse);
  }

  Future<Novels> fetchUserNovelBookmarksByNextUrl(
    String nextUrl,
  ) async {
    final url = Uri.parse(nextUrl);
    final header = await getRefreshedHeader();
    final response = await innerClient.get(url, headers: header);
    final jsonResponse = parse(response);
    return Novels.fromJson(jsonResponse);
  }

  // watchlist
  // webview

  // download
  Future<Uint8List> downloadIllustData(String url) async {
    final uri = Uri.parse(url);
    final response = await innerClient
        .get(uri, headers: {'Referer': 'https://$apiHostname'});
    return response.bodyBytes;
  }
}
