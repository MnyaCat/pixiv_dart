// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'ugoira_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZipUrls _$$_ZipUrlsFromJson(Map json) => _$_ZipUrls(
      medium: json['medium'] as String,
    );

Map<String, dynamic> _$$_ZipUrlsToJson(_$_ZipUrls instance) =>
    <String, dynamic>{
      'medium': instance.medium,
    };

_$_Frame _$$_FrameFromJson(Map json) => _$_Frame(
      file: json['file'] as String,
      delay: json['delay'] as int,
    );

Map<String, dynamic> _$$_FrameToJson(_$_Frame instance) => <String, dynamic>{
      'file': instance.file,
      'delay': instance.delay,
    };

_$_UgoiraMetadata _$$_UgoiraMetadataFromJson(Map json) => _$_UgoiraMetadata(
      zipUrls:
          ZipUrls.fromJson(Map<String, dynamic>.from(json['zip_urls'] as Map)),
      frames: (json['frames'] as List<dynamic>)
          .map((e) => Frame.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
    );

Map<String, dynamic> _$$_UgoiraMetadataToJson(_$_UgoiraMetadata instance) =>
    <String, dynamic>{
      'zip_urls': instance.zipUrls.toJson(),
      'frames': instance.frames.map((e) => e.toJson()).toList(),
    };
