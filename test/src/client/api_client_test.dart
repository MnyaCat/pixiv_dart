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

  group('Manga api', () {
    test('fetchRecommendedManga test', () async {
      final recommendedManga = await apiClient!.fetchRecommendedManga();
      expect(recommendedManga.illusts.length, 30);
      expect(recommendedManga.illusts[0].id, 115919036);
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
          '百合文芸4',
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

  group('Search API', () {
    test('searchIllust test', () async {
      final result = await apiClient!.searchIllust('原神');
      expect(result.illusts.length, 30);
      expect(result.illusts[0].id, 116346676);
    });
    test('searchNovel test', () async {
      final result = await apiClient!.searchNovel('原神');
      expect(result.novels.length, 30);
      expect(result.novels[0].id, 21655063);
    });
    test('searchUser test', () async {
      final result = await apiClient!.searchUser('pixiv');
      expect(result.userPreviews.length, 9);
      expect(result.userPreviews[0].user.id, 11);
    });
  });

  group('Ugoira API', () {
    const illustId = 103647493;
    test('fetchUgoiraMetadata test', () async {
      final metadata = await apiClient!.fetchUgoiraMetadata(illustId);
      expect(metadata.frames, <Frame>[
        Frame(file: '000000.jpg', delay: 100),
        Frame(file: '000001.jpg', delay: 100),
        Frame(file: '000002.jpg', delay: 100),
        Frame(file: '000003.jpg', delay: 100),
        Frame(file: '000004.jpg', delay: 100),
        Frame(file: '000005.jpg', delay: 100),
        Frame(file: '000006.jpg', delay: 100),
        Frame(file: '000007.jpg', delay: 100),
        Frame(file: '000008.jpg', delay: 100),
        Frame(file: '000009.jpg', delay: 100),
        Frame(file: '000010.jpg', delay: 100),
        Frame(file: '000011.jpg', delay: 100),
        Frame(file: '000012.jpg', delay: 100),
        Frame(file: '000013.jpg', delay: 100),
        Frame(file: '000014.jpg', delay: 100),
        Frame(file: '000015.jpg', delay: 100),
        Frame(file: '000016.jpg', delay: 100),
        Frame(file: '000017.jpg', delay: 100),
        Frame(file: '000018.jpg', delay: 100),
        Frame(file: '000019.jpg', delay: 100),
        Frame(file: '000020.jpg', delay: 100),
        Frame(file: '000021.jpg', delay: 100),
        Frame(file: '000022.jpg', delay: 100),
        Frame(file: '000023.jpg', delay: 100),
        Frame(file: '000024.jpg', delay: 100),
        Frame(file: '000025.jpg', delay: 100),
        Frame(file: '000026.jpg', delay: 100),
        Frame(file: '000027.jpg', delay: 100),
      ]);
      expect(
        metadata.zipUrls,
        ZipUrls(
          medium:
              'https://i.pximg.net/img-zip-ugoira/img/2022/12/16/17/15/49/103647493_ugoira600x600.zip',
        ),
      );
    });
  });

  group('User api', () {
    test('addFollow test', () async {
      await apiClient!.addFollow(11);
    });
    test('deleteFollow test', () async {
      await apiClient!.deleteFollow(11);
    });
    test('fetchRecommendedUsers test', () async {
      final recommendedUsers =
          await apiClient!.fetchRecommendedUsers(offset: 30);
      expect(recommendedUsers.userPreviews.length, 30);
      expect(recommendedUsers.userPreviews[0].user.id, 91940297);
    });
    test('fetchRelatedUsers test', () async {
      final relatedUsers = await apiClient!.fetchRelatedUsers(11);
      expect(relatedUsers.length, 30);
      expect(relatedUsers[0].user.id, 2188232);
    });
    test('fetchUserDetail test', () async {
      final userDetail = await apiClient!.fetchUserDetail(11);
      expect(userDetail.user.id, 11);
      expect(userDetail.user.name, 'pixiv事務局');
    });
    test('fetchUserFollowing test', () async {
      final userFollowing = await apiClient!.fetchUserFollowing(12848282);
      expect(userFollowing.userPreviews.length, 5);
      expect(userFollowing.userPreviews[0].user.id, 2118757);
    });
    test('fetchUserIllusts test', () async {
      final userIllusts = await apiClient!.fetchUserIllusts(11);
      expect(userIllusts.illusts.length, 30);
      expect(userIllusts.illusts[0].id, 116111418);
    });
    test('fetchUserIllustBookmarks test', () async {
      final bookmarks =
          await apiClient!.fetchUserIllustBookmarks(37898478, Restrict.public);
      expect(bookmarks.illusts.length, 30);
      expect(bookmarks.illusts[0].id, 100174375);
    });
    test('fetchUserIllustBookmarksByNextUrl test', () async {
      final bookmarks =
          await apiClient!.fetchUserIllustBookmarks(37898478, Restrict.public);
      // nextUrlの場合だけ別のレスポンスにする方法が思いつかないので流用
      // 中身はtest/response/v1_user_bookmarks_illust.txt
      final nextBookmarks = await apiClient!
          .fetchUserIllustBookmarksByNextUrl(bookmarks.nextUrl!);
      expect(nextBookmarks.illusts.length, 30);
      expect(nextBookmarks.illusts[0].id, 100174375);
    });
    test('fetchUserNovels test', () async {
      final userNovels = await apiClient!.fetchUserNovels(43826688);
      expect(userNovels.novels.length, 12);
      expect(userNovels.novels[0].id, 21278784);
    });
    test('fetchUserNovelBookmarks test', () async {
      final bookmarks =
          await apiClient!.fetchUserNovelBookmarks(37898478, Restrict.public);
      expect(bookmarks.novels.length, 30);
      expect(bookmarks.novels[0].id, 18649633);
    });
    test('fetchUserNovelBookmarksByNextUrl test', () async {
      final bookmarks =
          await apiClient!.fetchUserNovelBookmarks(37898478, Restrict.public);
      // nextUrlの場合だけ別のレスポンスにする方法が思いつかないので流用
      // 中身はtest/response/v1_user_bookmarks_novel.txt
      final nextBookmarks =
          await apiClient!.fetchUserNovelBookmarksByNextUrl(bookmarks.nextUrl!);
      expect(nextBookmarks.novels.length, 30);
      expect(nextBookmarks.novels[0].id, 18649633);
    });
  });
}
