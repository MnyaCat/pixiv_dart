// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoImpl _$$UserInfoImplFromJson(Map json) => _$UserInfoImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      account: json['account'] as String,
      profileImageUrls: ProfileImageUrls.fromJson(
          Map<String, dynamic>.from(json['profile_image_urls'] as Map)),
      comment: json['comment'] as String?,
      isFollowed: json['is_followed'] as bool,
      isAccessBlockingUser: json['is_access_blocking_user'] as bool?,
    );

Map<String, dynamic> _$$UserInfoImplToJson(_$UserInfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'account': instance.account,
      'profile_image_urls': instance.profileImageUrls.toJson(),
      'comment': instance.comment,
      'is_followed': instance.isFollowed,
      'is_access_blocking_user': instance.isAccessBlockingUser,
    };
