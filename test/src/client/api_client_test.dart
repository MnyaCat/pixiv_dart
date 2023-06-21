import 'dart:convert';
import 'dart:io';

import 'package:pixiv_dart/pixiv_dart.dart';
import 'package:test/test.dart';

import './mock_client.dart';

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
    apiClient = ApiClient(userAccount, createMockClient());
  });

  tearDown(() {
    apiClient = null;
  });

  group('Illust api', () {
    const illustId = 92210213;
    test('addIllustBookmark test', () async {
      await apiClient!.addIllustBookmark(illustId);
    });
    test('deleteIllustBookmark test', () async {
      await apiClient!.addIllustBookmark(illustId);
    });
    test('fetchIllustBookmarkedDetail test', () async {
      final bookmark = await apiClient!.fetchIllustBookmarkedDetail(92210213);
      expect(bookmark.isBookmarked, isTrue);
      expect(bookmark.restrict, Restrict.public);
      expect(
        bookmark.getRegisteredTags().map((tag) => tag.name),
        ['刻晴', '刻晴(原神)', '原神'],
      );
    });
    test('fetchIllustDetail test', () async {
      final illust = await apiClient!.fetchIllustDetail(illustId);
      expect(illust.id, illustId);
      expect(illust.title, '刻晴');
      expect(
        illust.tags.map((tag) => tag.name),
        ['原神', '刻晴', '原神10000users入り', '刻晴(原神)'],
      );
    });

    test('fetchIllustRanking test', () async {
      final ranking =
          await apiClient!.fetchIllustRanking(date: DateTime(2023, 4, 26));
      expect(ranking.illusts.length, 29);
      expect(
        ranking.illusts[0].id,
        107494210,
      );
    });

    test('fetchLatestIllustByFollowing test', () async {
      final illusts = await apiClient!.fetchLatestIllustByFollowing();
      expect(illusts.illusts.length, 30);
      expect(
        illusts.illusts[0].id,
        108555990,
      );
    });

    // mypixivがいないので/v2/illust/followでテスト
    test('fetchLatestIllustByMyPixiv', () async {
      final illusts = await apiClient!.fetchLatestIllustByMyPixiv();
      expect(illusts.illusts.length, 29);
      expect(
        illusts.illusts[0].id,
        107494210,
      );
    });

    test('fetchLatestIllusts test', () async {
      final illusts = await apiClient!.fetchLatestIllusts();
      expect(illusts.illusts.length, 30);
      expect(
        illusts.illusts[0].id,
        108556585,
      );
    });

    test('fetchRecommendedIllusts test', () async {
      final illusts = await apiClient!.fetchRecommendedIllusts();
      expect(illusts.illusts.length, 82);
      expect(
        illusts.illusts[0].id,
        107904417,
      );
    });

    test('fetch related illust', () async {
      final illusts = await apiClient!.fetchRelatedIllust(illustId);
      expect(illusts.illusts.length, 30);
      expect(
        illusts.illusts[0].id,
        92381423,
      );
    });
  });

  group('Novel api', () {
    const novelId = 11674134;
    test('addNovelBookmark test', () async {
      await apiClient!.addNovelBookmark(novelId);
    });
    test('deleteNovelBookmark test', () async {
      await apiClient!.deleteNovelBookmark(novelId);
    });
    test('fetchNovelBookmarkedDetail test', () async {
      final bookmark = await apiClient!.fetchNovelBookmarkedDetail(novelId);
      expect(bookmark.isBookmarked, isTrue);
      expect(bookmark.restrict, Restrict.public);
      expect(
        bookmark.getRegisteredTags().map((tag) => tag.name),
        ['百合', '100点でも足りない', '大人の階段', '創作百合', '社会人百合', '百合文芸4'],
      );
    });
    test('fetchNovelDetail test', () async {
      final novel = await apiClient!.fetchNovelDetail(novelId);
      expect(novel.id, novelId);
      expect(novel.title, '裸足で踊る');
      expect(
        novel.tags.map((tag) => tag.name),
        [
          '創作百合',
          '百合',
          '社会人百合',
          '大人の階段',
          '100点でも足りない',
          '百合小説50users入り',
          '百合小説100users入り',
          '百合文芸4'
        ],
      );
    });
    test('fetchLatestNovels test', () async {
      final novels = await apiClient!.fetchLatestNovels();
      expect(novels.novels.length, 30);
      expect(novels.novels[0].id, 19977212);
    });
    test('fetchLatestNovelsByFollowing test', () async {
      final novels = await apiClient!.fetchLatestNovelsByFollowing();
      expect(novels.novels.length, 30);
      expect(novels.novels[0].id, 19971288);
    });
    // mypixivがいないのでv1/novel/followでテスト
    test('fetchLatestNovelsByMyPixiv test', () async {
      final novels = await apiClient!.fetchLatestNovelsByMyPixiv();
      expect(novels.novels.length, 30);
      expect(novels.novels[0].id, 19971288);
    });
    test('fetchNovelRanking test', () async {
      final novels = await apiClient!.fetchNovelRanking();
      expect(novels.novels.length, 30);
      expect(novels.novels[0].id, 19753616);
    });
    test('fetchRecommendedNovels test', () async {
      final novels = await apiClient!.fetchRecommendedNovels();
      expect(novels.novels.length, 33);
      expect(novels.novels[0].id, 14103227);
    });
    test('fetchRelatedNovels novel', () async {
      final novels = await apiClient!.fetchRelatedNovels(novelId);
      expect(novels.novels.length, 30);
      expect(novels.novels[0].id, 18938078);
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
