// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'novel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Novel _$$_NovelFromJson(Map json) => _$_Novel(
      id: json['id'] as int,
      title: json['title'] as String,
      caption: json['caption'] as String,
      restrict: json['restrict'] as int,
      xRestrict: json['x_restrict'] as int,
      isOriginal: json['is_original'] as bool,
      imageUrls: ImageUrls.fromJson(
          Map<String, dynamic>.from(json['image_urls'] as Map)),
      createDate: const LocalDateTimeConverter()
          .fromJson(json['create_date'] as String),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      pageCount: json['page_count'] as int,
      textLength: json['text_length'] as int,
      user: User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      series: const NovelSeriesConverter().fromJson(json['series'] as Map?),
      isBookmarked: json['is_bookmarked'] as bool,
      totalBookmarks: json['total_bookmarks'] as int,
      totalView: json['total_view'] as int,
      visible: json['visible'] as bool,
      totalComments: json['total_comments'] as int,
      isMuted: json['is_muted'] as bool,
      isMypixivOnly: json['is_mypixiv_only'] as bool,
      isXRestricted: json['is_x_restricted'] as bool,
      novelAIType:
          const AITypeConverter().fromJson(json['novel_ai_type'] as int),
      commentAccessControl: json['comment_access_control'] as int?,
    );

Map<String, dynamic> _$$_NovelToJson(_$_Novel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'caption': instance.caption,
      'restrict': instance.restrict,
      'x_restrict': instance.xRestrict,
      'is_original': instance.isOriginal,
      'image_urls': instance.imageUrls.toJson(),
      'create_date': const LocalDateTimeConverter().toJson(instance.createDate),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'page_count': instance.pageCount,
      'text_length': instance.textLength,
      'user': instance.user.toJson(),
      'series': const NovelSeriesConverter().toJson(instance.series),
      'is_bookmarked': instance.isBookmarked,
      'total_bookmarks': instance.totalBookmarks,
      'total_view': instance.totalView,
      'visible': instance.visible,
      'total_comments': instance.totalComments,
      'is_muted': instance.isMuted,
      'is_mypixiv_only': instance.isMypixivOnly,
      'is_x_restricted': instance.isXRestricted,
      'novel_ai_type': const AITypeConverter().toJson(instance.novelAIType),
      'comment_access_control': instance.commentAccessControl,
    };
