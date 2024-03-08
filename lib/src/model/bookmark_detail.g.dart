// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'bookmark_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookmarkTagImpl _$$BookmarkTagImplFromJson(Map json) => _$BookmarkTagImpl(
      name: json['name'] as String,
      isRegistered: json['is_registered'] as bool,
    );

Map<String, dynamic> _$$BookmarkTagImplToJson(_$BookmarkTagImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_registered': instance.isRegistered,
    };

_$BookmarkDetailImpl _$$BookmarkDetailImplFromJson(Map json) =>
    _$BookmarkDetailImpl(
      isBookmarked: json['is_bookmarked'] as bool,
      tags: (json['tags'] as List<dynamic>)
          .map((e) => BookmarkTag.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      restrict: $enumDecode(_$RestrictEnumMap, json['restrict']),
    );

Map<String, dynamic> _$$BookmarkDetailImplToJson(
        _$BookmarkDetailImpl instance) =>
    <String, dynamic>{
      'is_bookmarked': instance.isBookmarked,
      'tags': instance.tags.map((e) => e.toJson()).toList(),
      'restrict': _$RestrictEnumMap[instance.restrict]!,
    };

const _$RestrictEnumMap = {
  Restrict.public: 'public',
  Restrict.private: 'private',
};
