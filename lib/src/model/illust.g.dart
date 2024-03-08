// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'illust.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IllustImageUrlsImpl _$$IllustImageUrlsImplFromJson(Map json) =>
    _$IllustImageUrlsImpl(
      squareMedium: json['square_medium'] as String,
      medium: json['medium'] as String,
      large: json['large'] as String,
      original: json['original'] as String,
    );

Map<String, dynamic> _$$IllustImageUrlsImplToJson(
        _$IllustImageUrlsImpl instance) =>
    <String, dynamic>{
      'square_medium': instance.squareMedium,
      'medium': instance.medium,
      'large': instance.large,
      'original': instance.original,
    };

_$MetaSinglePageImpl _$$MetaSinglePageImplFromJson(Map json) =>
    _$MetaSinglePageImpl(
      originalImageUrl: json['original_image_url'] as String,
    );

Map<String, dynamic> _$$MetaSinglePageImplToJson(
        _$MetaSinglePageImpl instance) =>
    <String, dynamic>{
      'original_image_url': instance.originalImageUrl,
    };

_$IllustImpl _$$IllustImplFromJson(Map json) => _$IllustImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      type: $enumDecode(_$IllustTypeEnumMap, json['type']),
      imageUrls: ImageUrls.fromJson(
          Map<String, dynamic>.from(json['image_urls'] as Map)),
      caption: json['caption'] as String,
      restrict: json['restrict'] as int,
      user: User.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      tags: (json['tags'] as List<dynamic>)
          .map((e) => Tag.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      tools: (json['tools'] as List<dynamic>).map((e) => e as String).toList(),
      createDate: const LocalDateTimeConverter()
          .fromJson(json['create_date'] as String),
      pageCount: json['page_count'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      sanityLevel: json['sanity_level'] as int,
      xRestrict: json['x_restrict'] as int,
      series: json['series'] == null
          ? null
          : Series.fromJson(Map<String, dynamic>.from(json['series'] as Map)),
      metaSinglePage: const MetaSinglePageConveter()
          .fromJson(json['meta_single_page'] as Map?),
      metaPages:
          const MetaPagesConverter().fromJson(json['meta_pages'] as List),
      totalView: json['total_view'] as int,
      totalBookmarks: json['total_bookmarks'] as int,
      isBookmarked: json['is_bookmarked'] as bool,
      visible: json['visible'] as bool,
      isMuted: json['is_muted'] as bool,
      totalComments: json['total_comments'] as int?,
      illustAIType:
          const AITypeConverter().fromJson(json['illust_ai_type'] as int),
      illustBookStyle: json['illust_book_style'] as int,
      commentAccessControl: json['comment_access_control'] as int?,
    );

Map<String, dynamic> _$$IllustImplToJson(_$IllustImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$IllustTypeEnumMap[instance.type]!,
      'image_urls': instance.imageUrls.toJson(),
      'caption': instance.caption,
      'restrict': instance.restrict,
      'user': instance.user.toJson(),
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'tools': instance.tools,
      'create_date': const LocalDateTimeConverter().toJson(instance.createDate),
      'page_count': instance.pageCount,
      'width': instance.width,
      'height': instance.height,
      'sanity_level': instance.sanityLevel,
      'x_restrict': instance.xRestrict,
      'series': instance.series?.toJson(),
      'meta_single_page':
          const MetaSinglePageConveter().toJson(instance.metaSinglePage),
      'meta_pages': const MetaPagesConverter().toJson(instance.metaPages),
      'total_view': instance.totalView,
      'total_bookmarks': instance.totalBookmarks,
      'is_bookmarked': instance.isBookmarked,
      'visible': instance.visible,
      'is_muted': instance.isMuted,
      'total_comments': instance.totalComments,
      'illust_ai_type': const AITypeConverter().toJson(instance.illustAIType),
      'illust_book_style': instance.illustBookStyle,
      'comment_access_control': instance.commentAccessControl,
    };

const _$IllustTypeEnumMap = {
  IllustType.illust: 'illust',
  IllustType.manga: 'manga',
  IllustType.ugoira: 'ugoira',
};
