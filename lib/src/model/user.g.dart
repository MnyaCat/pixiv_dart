// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map json) => _$_User(
      id: json['id'] as int,
      name: json['name'] as String,
      account: json['account'] as String,
      profileImageUrls: ProfileImageUrls.fromJson(
          Map<String, dynamic>.from(json['profile_image_urls'] as Map)),
      isFollowed: json['is_followed'] as bool?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'account': instance.account,
      'profile_image_urls': instance.profileImageUrls.toJson(),
      'is_followed': instance.isFollowed,
    };
