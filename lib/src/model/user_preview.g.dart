// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreviewImpl _$$UserPreviewImplFromJson(Map json) => _$UserPreviewImpl(
      user: UserInfo.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      illusts: (json['illusts'] as List<dynamic>)
          .map((e) => Illust.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      novels: (json['novels'] as List<dynamic>)
          .map((e) => Novel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      isMuted: json['is_muted'] as bool,
    );

Map<String, dynamic> _$$UserPreviewImplToJson(_$UserPreviewImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'illusts': instance.illusts.map((e) => e.toJson()).toList(),
      'novels': instance.novels.map((e) => e.toJson()).toList(),
      'is_muted': instance.isMuted,
    };
