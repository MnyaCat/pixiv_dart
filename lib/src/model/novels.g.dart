// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'novels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Novels _$$_NovelsFromJson(Map json) => _$_Novels(
      novels: (json['novels'] as List<dynamic>)
          .map((e) => Novel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      nextUrl: json['next_url'] as String?,
    );

Map<String, dynamic> _$$_NovelsToJson(_$_Novels instance) => <String, dynamic>{
      'novels': instance.novels.map((e) => e.toJson()).toList(),
      'next_url': instance.nextUrl,
    };
