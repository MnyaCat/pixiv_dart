import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:pixiv_dart/pixiv_dart.dart';
import 'package:test/test.dart';

typedef JsonMap = Map<String, dynamic>;

Future<JsonMap> jsonFileDecode(String path) async {
  final file = File(path);
  final json = await file.readAsString();
  return jsonDecode(json) as JsonMap;
}

void main() async {
  final userAccountJson = await jsonFileDecode('test/user_account.json');
  final userAccount = UserAccount.fromJson(userAccountJson);

  late ApiClient? apiClient;

  setUp(() {
    apiClient = ApiClient(userAccount, http.Client());
  });

  tearDown(() {
    apiClient = null;
  });

  group('Illust api', () {
    const illustId = 92210213;
    group('addIllustBookmark test', () {
      test('add public test', () async {
        final randomTag = Random().nextInt(10000).toString();
        await apiClient!.addIllustBookmark(illustId, tags: [randomTag]);
        final bookmarkedDetail =
            await apiClient!.fetchIllustBookmarkedDetail(illustId);
        expect(bookmarkedDetail.isBookmarked, true);
        expect(
          bookmarkedDetail.tags
              .contains(BookmarkTag(name: randomTag, isRegistered: true)),
          true,
        );
        await apiClient!.deleteIllustBookmark(illustId);
      });
      test('add private test', () async {
        final randomTag = Random().nextInt(10000).toString();
        await apiClient!.addIllustBookmark(
          illustId,
          restrict: Restrict.private,
          tags: [randomTag],
        );
        final bookmarkedDetail =
            await apiClient!.fetchIllustBookmarkedDetail(illustId);
        expect(bookmarkedDetail.isBookmarked, true);
        expect(bookmarkedDetail.restrict, Restrict.private);
        expect(
          bookmarkedDetail.tags
              .contains(BookmarkTag(name: randomTag, isRegistered: true)),
          true,
        );
        await apiClient!.deleteIllustBookmark(illustId);
      });
    });
    test('deleteIllustBookmark test', () async {
      await apiClient!.addIllustBookmark(illustId);
      await apiClient!.deleteIllustBookmark(illustId);
      final bookmarkDetail =
          await apiClient!.fetchIllustBookmarkedDetail(illustId);
      expect(
        bookmarkDetail.isBookmarked,
        false,
      );
    });
    test('fetchIllustBookmarkedDetail test', () async {
      final bookmarkedDetail =
          await apiClient!.fetchIllustBookmarkedDetail(92210213);
      final json = await jsonFileDecode(
        'test/response/fetch_illust_bookmarked_detail.json',
      );
      final matcherBookmarkDetail = BookmarkDetail.fromJson(json);
      expect(bookmarkedDetail.isBookmarked, matcherBookmarkDetail.isBookmarked);
      expect(
        bookmarkedDetail.tags.where((tag) => tag.isRegistered),
        matcherBookmarkDetail.tags.where((tag) => tag.isRegistered),
      );
      expect(bookmarkedDetail.restrict, matcherBookmarkDetail.restrict);
    });
    test('fetchIllustDetail test', () async {
      final illust = await apiClient!.fetchIllustDetail(illustId);
      final json =
          await jsonFileDecode('test/response/fetch_illust_detail.json');
      final matcherIllust = Illust.fromJson(json);
      expect(illust.id, matcherIllust.id);
      expect(illust.title, matcherIllust.title);
      expect(illust.createDate, matcherIllust.createDate);
    });

    group('fetchIllustRanking test', () {
      test('fetch daily ranking test', () async {
        await apiClient!.fetchIllustRanking();
      });
      test('fetch daily ranking #31~60', () async {
        await apiClient!.fetchIllustRanking(offset: 30);
      });
      test('fetch daily ranking on 01/01/2023 test', () async {
        final illusts =
            await apiClient!.fetchIllustRanking(date: DateTime(2023));
        final json = await jsonFileDecode(
          'test/response/fetch_illust_ranking_2023_01_01.json',
        );
        final matcherIllusts = Illusts.fromJson(json);
        expect(illusts.illusts[0].id, matcherIllusts.illusts[0].id);
        expect(illusts.illusts[0].title, matcherIllusts.illusts[0].title);
      });
    });

    group('fetchLatestIllustByFollowing test', () {
      test('fetch all follow', () async {
        await apiClient!.fetchLatestIllustByFollowing();
      });
      test('fetch public follow', () async {
        await apiClient!
            .fetchLatestIllustByFollowing(restrict: FollowingRestrict.public);
      });
      test('fetch private follow', () async {
        await apiClient!
            .fetchLatestIllustByFollowing(restrict: FollowingRestrict.private);
      });
      test('fetch all follow 31~60', () async {
        await apiClient!.fetchLatestIllustByFollowing(offset: 30);
      });
    });

    // mypixivがいないので/v2/illust/followでテスト
    group('fetchLatestIllustByMyPixiv test', () {
      test('fetch latest illust mypixiv', () async {
        await apiClient!.fetchLatestIllustByMyPixiv();
      });
      test('fetch latest illust mypixiv 31~60', () async {
        await apiClient!.fetchLatestIllustByMyPixiv(offset: 30);
      });
    });

    group('fetchLatestIllusts test', () {
      test('fetch latest illust', () async {
        await apiClient!.fetchLatestIllusts();
      });
      test('fetch latest illust 31~60', () async {
        final illusts = await apiClient!.fetchLatestIllusts();
        final lastIndex = illusts.illusts.length;
        final maxIllustId = illusts.illusts[lastIndex - 1].id;
        await apiClient!.fetchLatestIllusts(maxIllustId: maxIllustId);
      });
    });

    group('fetchRecommendedIllusts test', () {
      test('fetch recommended illust', () async {
        await apiClient!.fetchRecommendedIllusts();
      });
      test('fetch recommended illust 30~60', () async {
        final illusts = await apiClient!.fetchRecommendedIllusts();
        final queries = Uri.parse(illusts.nextUrl!).queryParameters;
        final viewed = <int>[];
        queries.forEach((key, value) {
          if (key.contains('viewed')) {
            viewed.add(int.parse(value));
          }
        });
        await apiClient!.fetchRecommendedIllusts(
          offset: int.parse(queries['offset']!),
          minBookmarkIdForRecentIllust:
              int.parse(queries['min_bookmark_id_for_recent_illust']!),
          maxBookmarkIdForRecommend:
              int.parse(queries['max_bookmark_id_for_recommend']!),
          viewed: viewed,
        );
      });
    });

    group('fetchRelatedIllust', () {
      test('fetch related illust', () async {
        await apiClient!.fetchRelatedIllust(illustId);
      });
      test('fetch related illust 31~60', () async {
        final illusts = await apiClient!.fetchRelatedIllust(illustId);
        final queries = Uri.parse(illusts.nextUrl!).queryParameters;
        final viewed = <int>[];
        queries.forEach((key, value) {
          if (key.contains('viewed')) {
            viewed.add(int.parse(value));
          }
        });
        await apiClient!.fetchRelatedIllust(
          illustId,
          seedIllustId: [int.parse(queries['seed_illust_ids[0]']!)],
          viewed: viewed,
        );
      });
    });
  });

  group('Novel api', () {
    const novelId = 11674134;
    group('addNovelBookmark test', () {
      test('add public test', () async {
        final randomTag = Random().nextInt(10000).toString();
        await apiClient!.addNovelBookmark(novelId, tags: [randomTag]);
        final bookmarkedDetail =
            await apiClient!.fetchNovelBookmarkedDetail(novelId);
        expect(bookmarkedDetail.isBookmarked, true);
        expect(
          bookmarkedDetail.tags
              .contains(BookmarkTag(name: randomTag, isRegistered: true)),
          true,
        );
        await apiClient!.deleteNovelBookmark(novelId);
      });
      test('add private test', () async {
        final randomTag = Random().nextInt(10000).toString();
        await apiClient!.addNovelBookmark(
          novelId,
          restrict: Restrict.private,
          tags: [randomTag],
        );
        final bookmarkedDetail =
            await apiClient!.fetchNovelBookmarkedDetail(novelId);
        expect(bookmarkedDetail.isBookmarked, true);
        expect(bookmarkedDetail.restrict, Restrict.private);
        expect(
          bookmarkedDetail.tags
              .contains(BookmarkTag(name: randomTag, isRegistered: true)),
          true,
        );
        await apiClient!.deleteNovelBookmark(novelId);
      });
    });
    test('deleteNovelBookmark test', () async {
      await apiClient!.addNovelBookmark(novelId);
      await apiClient!.deleteNovelBookmark(novelId);
      final bookmarkDetail =
          await apiClient!.fetchNovelBookmarkedDetail(novelId);
      expect(
        bookmarkDetail.isBookmarked,
        false,
      );
    });
    test('fetchNovelBookmarkedDetail test', () async {
      final bookmarkedDetail =
          await apiClient!.fetchNovelBookmarkedDetail(17137089);
      final json = await jsonFileDecode(
        'test/response/fetch_novel_bookmarked_detail.json',
      );
      final matcherBookmarkDetail = BookmarkDetail.fromJson(json);
      expect(bookmarkedDetail.isBookmarked, matcherBookmarkDetail.isBookmarked);
      expect(
        bookmarkedDetail.tags.where((tag) => tag.isRegistered),
        matcherBookmarkDetail.tags.where((tag) => tag.isRegistered),
      );
      expect(bookmarkedDetail.restrict, matcherBookmarkDetail.restrict);
    });
    test('fetchNovelDetail test', () async {
      final novel = await apiClient!.fetchNovelDetail(novelId);
      final json =
          await jsonFileDecode('test/response/fetch_novel_detail.json');
      final matcherNovel = Novel.fromJson(json);
      expect(novel.id, matcherNovel.id);
      expect(novel.title, matcherNovel.title);
      expect(novel.createDate, matcherNovel.createDate);
    });
    group('fetchLatestNovels test', () {
      test('fetch latest illust', () async {
        await apiClient!.fetchLatestNovels();
      });
      test('fetch latest illust 31~60', () async {
        final novels = await apiClient!.fetchLatestNovels();
        final lastIndex = novels.novels.length;
        final maxNovelId = novels.novels[lastIndex - 1].id;
        await apiClient!.fetchLatestNovels(maxNovelId: maxNovelId);
      });
    });
    group('fetchLatestNovelsByFollowing test', () {
      test('fetch all follow', () async {
        await apiClient!.fetchLatestNovelsByFollowing();
      });
      test('fetch public follow', () async {
        await apiClient!
            .fetchLatestNovelsByFollowing(restrict: FollowingRestrict.public);
      });
      test('fetch private follow', () async {
        await apiClient!
            .fetchLatestNovelsByFollowing(restrict: FollowingRestrict.private);
      });
      test('fetch all follow 31~60', () async {
        await apiClient!.fetchLatestNovelsByFollowing(offset: 30);
      });
    });
    // mypixivがいないのでv1/novel/followでテスト
    group('fetchLatestNovelsByMyPixiv test', () {
      test('fetch latest novel mypixiv', () async {
        await apiClient!.fetchLatestNovelsByMyPixiv();
      });
      test('fetch latest novel mypixiv 31~60', () async {
        await apiClient!.fetchLatestNovelsByMyPixiv(offset: 30);
      });
    });
    group('fetchNovelRanking test', () {
      test('fetch daily ranking test', () async {
        await apiClient!.fetchNovelRanking();
      });
      test('fetch daily ranking #31~60', () async {
        await apiClient!.fetchNovelRanking(offset: 30);
      });
      test('fetch daily ranking on 01/01/2023 test', () async {
        final novels = await apiClient!.fetchNovelRanking(date: DateTime(2023));
        final json = await jsonFileDecode(
          'test/response/fetch_novel_ranking_2023_01_01.json',
        );
        final matcherNovels = Novels.fromJson(json);
        expect(novels.novels[0].id, matcherNovels.novels[0].id);
        expect(novels.novels[0].title, matcherNovels.novels[0].title);
      });
    });
    group('fetchRecommendedNovels test', () {
      test('fetch recommended novel', () async {
        await apiClient!.fetchRecommendedNovels();
      });
      test('fetch recommended novel 30~60', () async {
        final novels = await apiClient!.fetchRecommendedNovels();
        final queries = Uri.parse(novels.nextUrl!).queryParameters;
        final alreadyRecommended = queries['already_recommended']!
            .split(',')
            .map<int>(int.parse)
            .toList();
        await apiClient!.fetchRecommendedNovels(
          offset: int.parse(queries['offset']!),
          maxBookmarIdForRecommended:
              int.parse(queries['max_bookmark_id_for_recommend']!),
          alreadyRecommended: alreadyRecommended,
        );
      });
    });
    group('fetchRelatedNovels test', () {
      test('fetch related novel', () async {
        await apiClient!.fetchRelatedNovels(novelId);
      });
      test('fetch related novel 31~60', () async {
        final novels = await apiClient!.fetchRelatedNovels(novelId);
        final queries = Uri.parse(novels.nextUrl!).queryParameters;
        final viewed = <int>[];
        queries.forEach((key, value) {
          if (key.contains('viewed')) {
            viewed.add(int.parse(value));
          }
        });
        await apiClient!.fetchRelatedNovels(
          novelId,
          seedNovelIds: [int.parse(queries['seed_novel_ids[0]']!)],
          viewed: viewed,
        );
      });
    });
  });

  group('User api', () {
    test('fetchUserDetail test', () async {
      final userDetail = await apiClient!.fetchUserDetail(11);
      final json = await jsonFileDecode('test/response/fetch_user_detail.json');
      final matcherUserDetail = UserDetail.fromJson(json);
      expect(userDetail.user, matcherUserDetail.user);
    });
    test('fetchUserIllustBookmarks test', () async {
      await apiClient!.fetchUserIllustBookmarks(37898478, Restrict.public);
      await apiClient!.fetchUserIllustBookmarks(37898478, Restrict.private);
    });
    test('fetchUserIllustBookmarksByNextUrl', () async {
      final bookmarks =
          await apiClient!.fetchUserIllustBookmarks(37898478, Restrict.public);
      await apiClient!.fetchUserIllustBookmarksByNextUrl(bookmarks.nextUrl!);
    });
    test('fetchUserNovelBookmarks test', () async {
      await apiClient!.fetchUserNovelBookmarks(37898478, Restrict.public);
      await apiClient!.fetchUserNovelBookmarks(37898478, Restrict.private);
    });
    test('fetchUserNovelBookmarksByNextUrl', () async {
      final bookmarks =
          await apiClient!.fetchUserNovelBookmarks(37898478, Restrict.public);
      await apiClient!.fetchUserNovelBookmarksByNextUrl(bookmarks.nextUrl!);
    });
  });
}
