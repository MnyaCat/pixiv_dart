// ignore_for_file: avoid_print

import 'package:http/http.dart' show Client;
import 'package:pixiv_dart/pixiv_dart.dart';

void main() async {
  final api =
      await ApiClient.loginWithRefreshToken('your refresh token', Client());

  // fetch illust detail
  final illust = await api.fetchIllustDetail(92210213);
  final tags = illust.tags.map((tag) => tag.name).toList();
  print('title: ${illust.title}');
  print('url: https://www.pixiv.net/artworks/${illust.id}');
  print('tags: $tags');

  // add bookmark
  await api.addIllustBookmark(92210213);
  // To add a tag
  await api.addIllustBookmark(92210213, tags: tags);

  // fetch user illust bookmarks(1-30)
  final bookmarks = await api.fetchUserIllustBookmarks(
    int.parse(api.user.id),
    Restrict.public,
  );
  print(
    'bookmark-1: ${bookmarks.illusts[0].title}(https://www.pixiv.net/artworks/${bookmarks.illusts[0].id})',
  );
  // 31-60
  final nextUrl = bookmarks.nextUrl;
  if (nextUrl != null) {
    final bookmarksP2 = await api.fetchUserIllustBookmarksByNextUrl(nextUrl);
    print(
      'bookmark-1: ${bookmarksP2.illusts[0].title}(https://www.pixiv.net/artworks/${bookmarksP2.illusts[0].id})',
    );
  }
}
