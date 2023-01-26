// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'illust_bookmarks.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IllustBookmarks _$$_IllustBookmarksFromJson(Map json) => _$_IllustBookmarks(
      illusts: (json['illusts'] as List<dynamic>)
          .map((e) => Illust.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      nextUrl: json['next_url'] as String?,
    );

Map<String, dynamic> _$$_IllustBookmarksToJson(_$_IllustBookmarks instance) =>
    <String, dynamic>{
      'illusts': instance.illusts.map((e) => e.toJson()).toList(),
      'next_url': instance.nextUrl,
    };
