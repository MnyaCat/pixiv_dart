// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, implicit_dynamic_parameter, implicit_dynamic_type, implicit_dynamic_method, strict_raw_type

part of 'user_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map json) => _$ProfileImpl(
      webpage: json['webpage'] as String?,
      gender: json['gender'] as String,
      birth: json['birth'] as String,
      birthDay: json['birth_day'] as String,
      birthYear: json['birth_year'] as int,
      region: json['region'] as String,
      addressId: json['address_id'] as int,
      countryCode: json['country_code'] as String,
      job: json['job'] as String,
      jobId: json['job_id'] as int,
      totalFollowUsers: json['total_follow_users'] as int,
      totalMypixivUsers: json['total_mypixiv_users'] as int,
      totalIllusts: json['total_illusts'] as int,
      totalManga: json['total_manga'] as int,
      totalNovels: json['total_novels'] as int,
      totalIllustBookmarksPublic: json['total_illust_bookmarks_public'] as int,
      totalIllustSeries: json['total_illust_series'] as int,
      totalNovelSeries: json['total_novel_series'] as int,
      backgroundImageUrl: json['background_image_url'] as String?,
      twitterAccount: json['twitter_account'] as String,
      twitterUrl: json['twitter_url'] as String?,
      pawooUrl: json['pawoo_url'] as String?,
      isPremium: json['is_premium'] as bool,
      isUsingCustomProfileImage: json['is_using_custom_profile_image'] as bool,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'webpage': instance.webpage,
      'gender': instance.gender,
      'birth': instance.birth,
      'birth_day': instance.birthDay,
      'birth_year': instance.birthYear,
      'region': instance.region,
      'address_id': instance.addressId,
      'country_code': instance.countryCode,
      'job': instance.job,
      'job_id': instance.jobId,
      'total_follow_users': instance.totalFollowUsers,
      'total_mypixiv_users': instance.totalMypixivUsers,
      'total_illusts': instance.totalIllusts,
      'total_manga': instance.totalManga,
      'total_novels': instance.totalNovels,
      'total_illust_bookmarks_public': instance.totalIllustBookmarksPublic,
      'total_illust_series': instance.totalIllustSeries,
      'total_novel_series': instance.totalNovelSeries,
      'background_image_url': instance.backgroundImageUrl,
      'twitter_account': instance.twitterAccount,
      'twitter_url': instance.twitterUrl,
      'pawoo_url': instance.pawooUrl,
      'is_premium': instance.isPremium,
      'is_using_custom_profile_image': instance.isUsingCustomProfileImage,
    };

_$ProfilePublicityImpl _$$ProfilePublicityImplFromJson(Map json) =>
    _$ProfilePublicityImpl(
      gender: $enumDecode(_$PrivacyEnumMap, json['gender']),
      region: $enumDecode(_$PrivacyEnumMap, json['region']),
      birthDay: $enumDecode(_$PrivacyEnumMap, json['birth_day']),
      birthYear: $enumDecode(_$PrivacyEnumMap, json['birth_year']),
      job: $enumDecode(_$PrivacyEnumMap, json['job']),
      pawoo: json['pawoo'] as bool,
    );

Map<String, dynamic> _$$ProfilePublicityImplToJson(
        _$ProfilePublicityImpl instance) =>
    <String, dynamic>{
      'gender': _$PrivacyEnumMap[instance.gender]!,
      'region': _$PrivacyEnumMap[instance.region]!,
      'birth_day': _$PrivacyEnumMap[instance.birthDay]!,
      'birth_year': _$PrivacyEnumMap[instance.birthYear]!,
      'job': _$PrivacyEnumMap[instance.job]!,
      'pawoo': instance.pawoo,
    };

const _$PrivacyEnumMap = {
  Privacy.public: 'public',
  Privacy.mypixiv: 'mypixiv',
  Privacy.private: 'private',
};

_$WorkspaceImpl _$$WorkspaceImplFromJson(Map json) => _$WorkspaceImpl(
      pc: json['pc'] as String,
      monitor: json['monitor'] as String,
      tool: json['tool'] as String,
      scanner: json['scanner'] as String,
      tablet: json['tablet'] as String,
      mouse: json['mouse'] as String,
      printer: json['printer'] as String,
      desktop: json['desktop'] as String,
      music: json['music'] as String,
      desk: json['desk'] as String,
      chair: json['chair'] as String,
      comment: json['comment'] as String,
      workspaceImageUrl: json['workspace_image_url'] as String?,
    );

Map<String, dynamic> _$$WorkspaceImplToJson(_$WorkspaceImpl instance) =>
    <String, dynamic>{
      'pc': instance.pc,
      'monitor': instance.monitor,
      'tool': instance.tool,
      'scanner': instance.scanner,
      'tablet': instance.tablet,
      'mouse': instance.mouse,
      'printer': instance.printer,
      'desktop': instance.desktop,
      'music': instance.music,
      'desk': instance.desk,
      'chair': instance.chair,
      'comment': instance.comment,
      'workspace_image_url': instance.workspaceImageUrl,
    };

_$UserDetailImpl _$$UserDetailImplFromJson(Map json) => _$UserDetailImpl(
      user: UserInfo.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      profile:
          Profile.fromJson(Map<String, dynamic>.from(json['profile'] as Map)),
      profilePublicity: ProfilePublicity.fromJson(
          Map<String, dynamic>.from(json['profile_publicity'] as Map)),
      workspace: Workspace.fromJson(
          Map<String, dynamic>.from(json['workspace'] as Map)),
    );

Map<String, dynamic> _$$UserDetailImplToJson(_$UserDetailImpl instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
      'profile': instance.profile.toJson(),
      'profile_publicity': instance.profilePublicity.toJson(),
      'workspace': instance.workspace.toJson(),
    };
