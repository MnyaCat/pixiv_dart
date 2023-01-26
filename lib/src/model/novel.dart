import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'enums.dart';
import 'image_urls.dart';
import 'json_converters.dart';
import 'series.dart';
import 'tag.dart';
import 'user.dart';

part 'novel.freezed.dart';
part 'novel.g.dart';

@freezed
class Novel with _$Novel {
  factory Novel({
    required int id,
    required String title,
    required String caption,
    required int restrict,
    required int xRestrict,
    required bool isOriginal,
    required ImageUrls imageUrls,
    @LocalDateTimeConverter() required DateTime createDate,
    required List<Tag> tags,
    required int pageCount,
    required int textLength,
    required User user,
    @NovelSeriesConverter() Series? series,
    required bool isBookmarked,
    required int totalBookmarks,
    required int totalView,
    required bool visible,
    required int totalComments,
    required bool isMuted,
    required bool isMypixivOnly,
    required bool isXRestricted,
    @JsonKey(name: 'novel_ai_type')
    @AITypeConverter()
        required AIType novelAIType,
    int? commentAccessControl,
  }) = _Novel;

  factory Novel.fromJson(JsonMap json) => _$NovelFromJson(json);
}
