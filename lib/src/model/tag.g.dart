// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagImpl _$$TagImplFromJson(Map json) => _$TagImpl(
      name: json['name'] as String,
      translatedName: json['translated_name'] as String?,
      addedByUploadedUser: json['added_by_uploaded_user'] as bool?,
    );

Map<String, dynamic> _$$TagImplToJson(_$TagImpl instance) => <String, dynamic>{
      'name': instance.name,
      'translated_name': instance.translatedName,
      'added_by_uploaded_user': instance.addedByUploadedUser,
    };
