// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_previews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserPreviewsImpl _$$UserPreviewsImplFromJson(Map json) => _$UserPreviewsImpl(
      userPreviews: (json['user_previews'] as List<dynamic>)
          .map((e) => UserPreview.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      nextUrl: json['next_url'] as String?,
    );

Map<String, dynamic> _$$UserPreviewsImplToJson(_$UserPreviewsImpl instance) =>
    <String, dynamic>{
      'user_previews': instance.userPreviews.map((e) => e.toJson()).toList(),
      'next_url': instance.nextUrl,
    };
