// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'client_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CllientUserProfileImageUrls _$$_CllientUserProfileImageUrlsFromJson(
        Map json) =>
    _$_CllientUserProfileImageUrls(
      px16x16: json['px_16x16'] as String,
      px50x50: json['px_50x50'] as String,
      px170x170: json['px_170x170'] as String,
    );

Map<String, dynamic> _$$_CllientUserProfileImageUrlsToJson(
        _$_CllientUserProfileImageUrls instance) =>
    <String, dynamic>{
      'px_16x16': instance.px16x16,
      'px_50x50': instance.px50x50,
      'px_170x170': instance.px170x170,
    };

_$_ClientUser _$$_ClientUserFromJson(Map json) => _$_ClientUser(
      profileImageUrls: CllientUserProfileImageUrls.fromJson(
          Map<String, dynamic>.from(json['profile_image_urls'] as Map)),
      id: const IdConverter().fromJson(json['id'] as String),
      name: json['name'] as String,
      account: json['account'] as String,
      mailAddress: json['mail_address'] as String,
      isPremium: json['is_premium'] as bool,
      xRestrict: json['x_restrict'] as int,
      isMailAuthorized: json['is_mail_authorized'] as bool,
      requirePolicyAgreement: json['require_policy_agreement'] as bool,
    );

Map<String, dynamic> _$$_ClientUserToJson(_$_ClientUser instance) =>
    <String, dynamic>{
      'profile_image_urls': instance.profileImageUrls.toJson(),
      'id': const IdConverter().toJson(instance.id),
      'name': instance.name,
      'account': instance.account,
      'mail_address': instance.mailAddress,
      'is_premium': instance.isPremium,
      'x_restrict': instance.xRestrict,
      'is_mail_authorized': instance.isMailAuthorized,
      'require_policy_agreement': instance.requirePolicyAgreement,
    };
