// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'ugoira_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZipUrlsImpl _$$ZipUrlsImplFromJson(Map json) => _$ZipUrlsImpl(
      medium: json['medium'] as String,
    );

Map<String, dynamic> _$$ZipUrlsImplToJson(_$ZipUrlsImpl instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };

_$FrameImpl _$$FrameImplFromJson(Map json) => _$FrameImpl(
      file: json['file'] as String,
      delay: json['delay'] as int,
    );

Map<String, dynamic> _$$FrameImplToJson(_$FrameImpl instance) =>
    <String, dynamic>{
      'file': instance.file,
      'delay': instance.delay,
    };

_$UgoiraMetadataImpl _$$UgoiraMetadataImplFromJson(Map json) =>
    _$UgoiraMetadataImpl(
      zipUrls:
          ZipUrls.fromJson(Map<String, dynamic>.from(json['zip_urls'] as Map)),
      frames: (json['frames'] as List<dynamic>)
          .map((e) => Frame.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$UgoiraMetadataImplToJson(
        _$UgoiraMetadataImpl instance) =>
    <String, dynamic>{
      'zip_urls': instance.zipUrls.toJson(),
      'frames': instance.frames.map((e) => e.toJson()).toList(),
    };
