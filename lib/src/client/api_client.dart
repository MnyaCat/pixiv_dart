import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import '../constants.dart';
import '../exceptions.dart';
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

  Future<Map<String, String>?> setNewTokenIfneed(
    Map<String, String>? headers,
  ) async {
    if (!userAccount.isActive()) {
      await refreshAccount();
      if (headers != null) {
        headers['Authorization'] = 'Bearer ${userAccount.accessToken}';
      }
    }
    return headers;
  }

  Future<http.Response> _get(Uri url, {Map<String, String>? headers}) async {
    final editedHeaders = await setNewTokenIfneed(headers);
    return innerClient.get(url, headers: editedHeaders);
  }

  Future<http.Response> _post(
    Uri url, {
    Map<String, String>? headers,
    Object? body,
    Encoding? encoding,
  }) async {
    final editedHeaders = await setNewTokenIfneed(headers);
    return innerClient.post(
      url,
      headers: editedHeaders,
      body: body,
      encoding: encoding,
    );
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
    final response = await _post(url, headers: defaultHeader, body: body);
    parse(response);
  }

  Future<void> deleteIllustBookmark(int illustId) async {
    final url = Uri.https(apiHostname, '/v1/illust/bookmark/delete');
    final body = <String, String>{'illust_id': illustId.toString()};
    final response = await _post(url, headers: defaultHeader, body: body);
    parse(response);
  }

  Future<BookmarkDetail> fetchIllustBookmarkedDetail(int illustId) async {
    final body = <String, String>{'illust_id': illustId.toString()};
    final url = Uri.https(apiHostname, '/v2/illust/bookmark/detail', body);
    final response = await _get(url, headers: defaultHeader);
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
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return Illust.fromJson(jsonResponse['illust'] as JsonMap);
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
    final response = await _post(url, headers: defaultHeader, body: body);
    parse(response);
  }

  Future<void> deleteNovelBookmark(int novelId) async {
    final url = Uri.https(apiHostname, 'v1/novel/bookmark/delete');
    final body = <String, String>{'novel_id': novelId.toString()};
    final response = await _post(url, headers: defaultHeader, body: body);
    parse(response);
  }

  Future<BookmarkDetail> fetchNovelBookmarkedDetail(int novelId) async {
    final body = <String, String>{'novel_id': novelId.toString()};
    final url = Uri.https(apiHostname, '/v2/novel/bookmark/detail', body);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return BookmarkDetail.fromJson(
      jsonResponse['bookmark_detail'] as JsonMap,
    );
  }

  Future<Novel> fetchNovelDetail(int novelId) async {
    final body = <String, String>{'novel_id': novelId.toString()};
    final url = Uri.https(apiHostname, '/v2/novel/detail', body);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return Novel.fromJson(jsonResponse['novel'] as JsonMap);
  }

  // search
  // spotlight
  // trending-tags

  // ugoira
  Future<UgoiraMetadata> fetchUgoiraMetadata(int illustId) async {
    final body = <String, String>{'illust_id': illustId.toString()};
    final url = Uri.https(apiHostname, '/v1/ugoira/metadata', body);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return UgoiraMetadata.fromJson(jsonResponse['ugoira_metadata'] as JsonMap);
  }

  // user

  Future<UserDetail> fetchUserDetail(int userId) async {
    final body = <String, String>{
      'filter': 'for_ios',
      'user_id': userId.toString()
    };
    final url = Uri.https(apiHostname, '/v1/user/detail', body);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return UserDetail.fromJson(jsonResponse);
  }

  Future<IllustBookmarks> fetchUserIllustBookmarks(
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
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return IllustBookmarks.fromJson(jsonResponse);
  }

  Future<IllustBookmarks> fetchUserIllustBookmarksByNextUrl(
    String nextUrl,
  ) async {
    final url = Uri.parse(nextUrl);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return IllustBookmarks.fromJson(jsonResponse);
  }

  Future<NovelBookmarks> fetchUserNovelBookmarks(
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
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return NovelBookmarks.fromJson(jsonResponse);
  }

  Future<NovelBookmarks> fetchUserNovelBookmarksByNextUrl(
    String nextUrl,
  ) async {
    final url = Uri.parse(nextUrl);
    final response = await _get(url, headers: defaultHeader);
    final jsonResponse = parse(response);
    return NovelBookmarks.fromJson(jsonResponse);
  }

  // watchlist
  // webview

  // download
  Future<File> downloadIllustData(String url, {File? file}) async {
    final uri = Uri.parse(url);
    final response = await innerClient
        .get(uri, headers: {'Referer': 'https://$apiHostname'});
    if (file == null) {
      final fileName = uri.pathSegments.last;
      final file = File(fileName);
      return file.writeAsBytes(response.bodyBytes);
    } else {
      return file.writeAsBytes(response.bodyBytes);
    }
  }
}
