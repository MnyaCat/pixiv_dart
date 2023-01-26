import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'enums.dart';

part 'bookmark_detail.freezed.dart';
part 'bookmark_detail.g.dart';

@freezed
class BookmarkTag with _$BookmarkTag {
  factory BookmarkTag({
    required String name,
    required bool isRegistered,
  }) = _BookmarkTag;

  factory BookmarkTag.fromJson(JsonMap json) => _$BookmarkTagFromJson(json);
}

@freezed
class BookmarkDetail with _$BookmarkDetail {
  factory BookmarkDetail({
    required bool isBookmarked,
    required List<BookmarkTag> tags,
    required Restrict restrict,
  }) = _BookmarkDetail;
  const BookmarkDetail._();

  factory BookmarkDetail.fromJson(JsonMap json) =>
      _$BookmarkDetailFromJson(json);

  List<BookmarkTag> getRegisteredTags() =>
      tags.where((tag) => tag.isRegistered).toList();
}
