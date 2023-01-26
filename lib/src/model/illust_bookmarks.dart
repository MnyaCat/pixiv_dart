import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'illust.dart';

part 'illust_bookmarks.freezed.dart';
part 'illust_bookmarks.g.dart';

@freezed
class IllustBookmarks with _$IllustBookmarks {
  factory IllustBookmarks({
    required List<Illust> illusts,
    required String? nextUrl,
  }) = _IllustBookmarks;

  factory IllustBookmarks.fromJson(JsonMap json) =>
      _$IllustBookmarksFromJson(json);
}
