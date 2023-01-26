import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'novel.dart';

part 'novel_bookmarks.freezed.dart';
part 'novel_bookmarks.g.dart';

@freezed
class NovelBookmarks with _$NovelBookmarks {
  factory NovelBookmarks({
    required List<Novel> novels,
    required String? nextUrl,
  }) = _NovelBookmarks;

  factory NovelBookmarks.fromJson(JsonMap json) =>
      _$NovelBookmarksFromJson(json);
}
