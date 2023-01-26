// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return _UserInfo.fromJson(json);
}

/// @nodoc
mixin _$UserInfo {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  ProfileImageUrls get profileImageUrls => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  bool get isFollowed => throw _privateConstructorUsedError;
  bool get isAccessBlockingUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call(
      {int id,
      String name,
      String account,
      ProfileImageUrls profileImageUrls,
      String comment,
      bool isFollowed,
      bool isAccessBlockingUser});

  $ProfileImageUrlsCopyWith<$Res> get profileImageUrls;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? account = null,
    Object? profileImageUrls = null,
    Object? comment = null,
    Object? isFollowed = null,
    Object? isAccessBlockingUser = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrls: null == profileImageUrls
          ? _value.profileImageUrls
          : profileImageUrls // ignore: cast_nullable_to_non_nullable
              as ProfileImageUrls,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccessBlockingUser: null == isAccessBlockingUser
          ? _value.isAccessBlockingUser
          : isAccessBlockingUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileImageUrlsCopyWith<$Res> get profileImageUrls {
    return $ProfileImageUrlsCopyWith<$Res>(_value.profileImageUrls, (value) {
      return _then(_value.copyWith(profileImageUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$$_UserInfoCopyWith(
          _$_UserInfo value, $Res Function(_$_UserInfo) then) =
      __$$_UserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String account,
      ProfileImageUrls profileImageUrls,
      String comment,
      bool isFollowed,
      bool isAccessBlockingUser});

  @override
  $ProfileImageUrlsCopyWith<$Res> get profileImageUrls;
}

/// @nodoc
class __$$_UserInfoCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$_UserInfo>
    implements _$$_UserInfoCopyWith<$Res> {
  __$$_UserInfoCopyWithImpl(
      _$_UserInfo _value, $Res Function(_$_UserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? account = null,
    Object? profileImageUrls = null,
    Object? comment = null,
    Object? isFollowed = null,
    Object? isAccessBlockingUser = null,
  }) {
    return _then(_$_UserInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrls: null == profileImageUrls
          ? _value.profileImageUrls
          : profileImageUrls // ignore: cast_nullable_to_non_nullable
              as ProfileImageUrls,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccessBlockingUser: null == isAccessBlockingUser
          ? _value.isAccessBlockingUser
          : isAccessBlockingUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfo implements _UserInfo {
  _$_UserInfo(
      {required this.id,
      required this.name,
      required this.account,
      required this.profileImageUrls,
      required this.comment,
      required this.isFollowed,
      required this.isAccessBlockingUser});

  factory _$_UserInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String account;
  @override
  final ProfileImageUrls profileImageUrls;
  @override
  final String comment;
  @override
  final bool isFollowed;
  @override
  final bool isAccessBlockingUser;

  @override
  String toString() {
    return 'UserInfo(id: $id, name: $name, account: $account, profileImageUrls: $profileImageUrls, comment: $comment, isFollowed: $isFollowed, isAccessBlockingUser: $isAccessBlockingUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.profileImageUrls, profileImageUrls) ||
                other.profileImageUrls == profileImageUrls) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isFollowed, isFollowed) ||
                other.isFollowed == isFollowed) &&
            (identical(other.isAccessBlockingUser, isAccessBlockingUser) ||
                other.isAccessBlockingUser == isAccessBlockingUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, account,
      profileImageUrls, comment, isFollowed, isAccessBlockingUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      __$$_UserInfoCopyWithImpl<_$_UserInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoToJson(
      this,
    );
  }
}

abstract class _UserInfo implements UserInfo {
  factory _UserInfo(
      {required final int id,
      required final String name,
      required final String account,
      required final ProfileImageUrls profileImageUrls,
      required final String comment,
      required final bool isFollowed,
      required final bool isAccessBlockingUser}) = _$_UserInfo;

  factory _UserInfo.fromJson(Map<String, dynamic> json) = _$_UserInfo.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get account;
  @override
  ProfileImageUrls get profileImageUrls;
  @override
  String get comment;
  @override
  bool get isFollowed;
  @override
  bool get isAccessBlockingUser;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String? get webpage => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get birth => throw _privateConstructorUsedError;
  String get birthDay => throw _privateConstructorUsedError;
  int get birthYear => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  int get addressId => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;
  int get jobId => throw _privateConstructorUsedError;
  int get totalFollowUsers => throw _privateConstructorUsedError;
  int get totalMypixivUsers => throw _privateConstructorUsedError;
  int get totalIllusts => throw _privateConstructorUsedError;
  int get totalManga => throw _privateConstructorUsedError;
  int get totalNovels => throw _privateConstructorUsedError;
  int get totalIllustBookmarksPublic => throw _privateConstructorUsedError;
  int get totalIllustSeries => throw _privateConstructorUsedError;
  int get totalNovelSeries => throw _privateConstructorUsedError;
  String? get backgroundImageUrl => throw _privateConstructorUsedError;
  String get twitterAccount => throw _privateConstructorUsedError;
  String? get twitterUrl => throw _privateConstructorUsedError;
  String? get pawooUrl => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  bool get isUsingCustomProfileImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String? webpage,
      String gender,
      String birth,
      String birthDay,
      int birthYear,
      String region,
      int addressId,
      String countryCode,
      String job,
      int jobId,
      int totalFollowUsers,
      int totalMypixivUsers,
      int totalIllusts,
      int totalManga,
      int totalNovels,
      int totalIllustBookmarksPublic,
      int totalIllustSeries,
      int totalNovelSeries,
      String? backgroundImageUrl,
      String twitterAccount,
      String? twitterUrl,
      String? pawooUrl,
      bool isPremium,
      bool isUsingCustomProfileImage});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webpage = freezed,
    Object? gender = null,
    Object? birth = null,
    Object? birthDay = null,
    Object? birthYear = null,
    Object? region = null,
    Object? addressId = null,
    Object? countryCode = null,
    Object? job = null,
    Object? jobId = null,
    Object? totalFollowUsers = null,
    Object? totalMypixivUsers = null,
    Object? totalIllusts = null,
    Object? totalManga = null,
    Object? totalNovels = null,
    Object? totalIllustBookmarksPublic = null,
    Object? totalIllustSeries = null,
    Object? totalNovelSeries = null,
    Object? backgroundImageUrl = freezed,
    Object? twitterAccount = null,
    Object? twitterUrl = freezed,
    Object? pawooUrl = freezed,
    Object? isPremium = null,
    Object? isUsingCustomProfileImage = null,
  }) {
    return _then(_value.copyWith(
      webpage: freezed == webpage
          ? _value.webpage
          : webpage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      totalFollowUsers: null == totalFollowUsers
          ? _value.totalFollowUsers
          : totalFollowUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalMypixivUsers: null == totalMypixivUsers
          ? _value.totalMypixivUsers
          : totalMypixivUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllusts: null == totalIllusts
          ? _value.totalIllusts
          : totalIllusts // ignore: cast_nullable_to_non_nullable
              as int,
      totalManga: null == totalManga
          ? _value.totalManga
          : totalManga // ignore: cast_nullable_to_non_nullable
              as int,
      totalNovels: null == totalNovels
          ? _value.totalNovels
          : totalNovels // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllustBookmarksPublic: null == totalIllustBookmarksPublic
          ? _value.totalIllustBookmarksPublic
          : totalIllustBookmarksPublic // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllustSeries: null == totalIllustSeries
          ? _value.totalIllustSeries
          : totalIllustSeries // ignore: cast_nullable_to_non_nullable
              as int,
      totalNovelSeries: null == totalNovelSeries
          ? _value.totalNovelSeries
          : totalNovelSeries // ignore: cast_nullable_to_non_nullable
              as int,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterAccount: null == twitterAccount
          ? _value.twitterAccount
          : twitterAccount // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pawooUrl: freezed == pawooUrl
          ? _value.pawooUrl
          : pawooUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingCustomProfileImage: null == isUsingCustomProfileImage
          ? _value.isUsingCustomProfileImage
          : isUsingCustomProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? webpage,
      String gender,
      String birth,
      String birthDay,
      int birthYear,
      String region,
      int addressId,
      String countryCode,
      String job,
      int jobId,
      int totalFollowUsers,
      int totalMypixivUsers,
      int totalIllusts,
      int totalManga,
      int totalNovels,
      int totalIllustBookmarksPublic,
      int totalIllustSeries,
      int totalNovelSeries,
      String? backgroundImageUrl,
      String twitterAccount,
      String? twitterUrl,
      String? pawooUrl,
      bool isPremium,
      bool isUsingCustomProfileImage});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? webpage = freezed,
    Object? gender = null,
    Object? birth = null,
    Object? birthDay = null,
    Object? birthYear = null,
    Object? region = null,
    Object? addressId = null,
    Object? countryCode = null,
    Object? job = null,
    Object? jobId = null,
    Object? totalFollowUsers = null,
    Object? totalMypixivUsers = null,
    Object? totalIllusts = null,
    Object? totalManga = null,
    Object? totalNovels = null,
    Object? totalIllustBookmarksPublic = null,
    Object? totalIllustSeries = null,
    Object? totalNovelSeries = null,
    Object? backgroundImageUrl = freezed,
    Object? twitterAccount = null,
    Object? twitterUrl = freezed,
    Object? pawooUrl = freezed,
    Object? isPremium = null,
    Object? isUsingCustomProfileImage = null,
  }) {
    return _then(_$_Profile(
      webpage: freezed == webpage
          ? _value.webpage
          : webpage // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      birth: null == birth
          ? _value.birth
          : birth // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
      jobId: null == jobId
          ? _value.jobId
          : jobId // ignore: cast_nullable_to_non_nullable
              as int,
      totalFollowUsers: null == totalFollowUsers
          ? _value.totalFollowUsers
          : totalFollowUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalMypixivUsers: null == totalMypixivUsers
          ? _value.totalMypixivUsers
          : totalMypixivUsers // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllusts: null == totalIllusts
          ? _value.totalIllusts
          : totalIllusts // ignore: cast_nullable_to_non_nullable
              as int,
      totalManga: null == totalManga
          ? _value.totalManga
          : totalManga // ignore: cast_nullable_to_non_nullable
              as int,
      totalNovels: null == totalNovels
          ? _value.totalNovels
          : totalNovels // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllustBookmarksPublic: null == totalIllustBookmarksPublic
          ? _value.totalIllustBookmarksPublic
          : totalIllustBookmarksPublic // ignore: cast_nullable_to_non_nullable
              as int,
      totalIllustSeries: null == totalIllustSeries
          ? _value.totalIllustSeries
          : totalIllustSeries // ignore: cast_nullable_to_non_nullable
              as int,
      totalNovelSeries: null == totalNovelSeries
          ? _value.totalNovelSeries
          : totalNovelSeries // ignore: cast_nullable_to_non_nullable
              as int,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterAccount: null == twitterAccount
          ? _value.twitterAccount
          : twitterAccount // ignore: cast_nullable_to_non_nullable
              as String,
      twitterUrl: freezed == twitterUrl
          ? _value.twitterUrl
          : twitterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      pawooUrl: freezed == pawooUrl
          ? _value.pawooUrl
          : pawooUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsingCustomProfileImage: null == isUsingCustomProfileImage
          ? _value.isUsingCustomProfileImage
          : isUsingCustomProfileImage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile(
      {required this.webpage,
      required this.gender,
      required this.birth,
      required this.birthDay,
      required this.birthYear,
      required this.region,
      required this.addressId,
      required this.countryCode,
      required this.job,
      required this.jobId,
      required this.totalFollowUsers,
      required this.totalMypixivUsers,
      required this.totalIllusts,
      required this.totalManga,
      required this.totalNovels,
      required this.totalIllustBookmarksPublic,
      required this.totalIllustSeries,
      required this.totalNovelSeries,
      required this.backgroundImageUrl,
      required this.twitterAccount,
      required this.twitterUrl,
      required this.pawooUrl,
      required this.isPremium,
      required this.isUsingCustomProfileImage});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String? webpage;
  @override
  final String gender;
  @override
  final String birth;
  @override
  final String birthDay;
  @override
  final int birthYear;
  @override
  final String region;
  @override
  final int addressId;
  @override
  final String countryCode;
  @override
  final String job;
  @override
  final int jobId;
  @override
  final int totalFollowUsers;
  @override
  final int totalMypixivUsers;
  @override
  final int totalIllusts;
  @override
  final int totalManga;
  @override
  final int totalNovels;
  @override
  final int totalIllustBookmarksPublic;
  @override
  final int totalIllustSeries;
  @override
  final int totalNovelSeries;
  @override
  final String? backgroundImageUrl;
  @override
  final String twitterAccount;
  @override
  final String? twitterUrl;
  @override
  final String? pawooUrl;
  @override
  final bool isPremium;
  @override
  final bool isUsingCustomProfileImage;

  @override
  String toString() {
    return 'Profile(webpage: $webpage, gender: $gender, birth: $birth, birthDay: $birthDay, birthYear: $birthYear, region: $region, addressId: $addressId, countryCode: $countryCode, job: $job, jobId: $jobId, totalFollowUsers: $totalFollowUsers, totalMypixivUsers: $totalMypixivUsers, totalIllusts: $totalIllusts, totalManga: $totalManga, totalNovels: $totalNovels, totalIllustBookmarksPublic: $totalIllustBookmarksPublic, totalIllustSeries: $totalIllustSeries, totalNovelSeries: $totalNovelSeries, backgroundImageUrl: $backgroundImageUrl, twitterAccount: $twitterAccount, twitterUrl: $twitterUrl, pawooUrl: $pawooUrl, isPremium: $isPremium, isUsingCustomProfileImage: $isUsingCustomProfileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.webpage, webpage) || other.webpage == webpage) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birth, birth) || other.birth == birth) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.jobId, jobId) || other.jobId == jobId) &&
            (identical(other.totalFollowUsers, totalFollowUsers) ||
                other.totalFollowUsers == totalFollowUsers) &&
            (identical(other.totalMypixivUsers, totalMypixivUsers) ||
                other.totalMypixivUsers == totalMypixivUsers) &&
            (identical(other.totalIllusts, totalIllusts) ||
                other.totalIllusts == totalIllusts) &&
            (identical(other.totalManga, totalManga) ||
                other.totalManga == totalManga) &&
            (identical(other.totalNovels, totalNovels) ||
                other.totalNovels == totalNovels) &&
            (identical(other.totalIllustBookmarksPublic,
                    totalIllustBookmarksPublic) ||
                other.totalIllustBookmarksPublic ==
                    totalIllustBookmarksPublic) &&
            (identical(other.totalIllustSeries, totalIllustSeries) ||
                other.totalIllustSeries == totalIllustSeries) &&
            (identical(other.totalNovelSeries, totalNovelSeries) ||
                other.totalNovelSeries == totalNovelSeries) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl) &&
            (identical(other.twitterAccount, twitterAccount) ||
                other.twitterAccount == twitterAccount) &&
            (identical(other.twitterUrl, twitterUrl) ||
                other.twitterUrl == twitterUrl) &&
            (identical(other.pawooUrl, pawooUrl) ||
                other.pawooUrl == pawooUrl) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isUsingCustomProfileImage,
                    isUsingCustomProfileImage) ||
                other.isUsingCustomProfileImage == isUsingCustomProfileImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        webpage,
        gender,
        birth,
        birthDay,
        birthYear,
        region,
        addressId,
        countryCode,
        job,
        jobId,
        totalFollowUsers,
        totalMypixivUsers,
        totalIllusts,
        totalManga,
        totalNovels,
        totalIllustBookmarksPublic,
        totalIllustSeries,
        totalNovelSeries,
        backgroundImageUrl,
        twitterAccount,
        twitterUrl,
        pawooUrl,
        isPremium,
        isUsingCustomProfileImage
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  factory _Profile(
      {required final String? webpage,
      required final String gender,
      required final String birth,
      required final String birthDay,
      required final int birthYear,
      required final String region,
      required final int addressId,
      required final String countryCode,
      required final String job,
      required final int jobId,
      required final int totalFollowUsers,
      required final int totalMypixivUsers,
      required final int totalIllusts,
      required final int totalManga,
      required final int totalNovels,
      required final int totalIllustBookmarksPublic,
      required final int totalIllustSeries,
      required final int totalNovelSeries,
      required final String? backgroundImageUrl,
      required final String twitterAccount,
      required final String? twitterUrl,
      required final String? pawooUrl,
      required final bool isPremium,
      required final bool isUsingCustomProfileImage}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String? get webpage;
  @override
  String get gender;
  @override
  String get birth;
  @override
  String get birthDay;
  @override
  int get birthYear;
  @override
  String get region;
  @override
  int get addressId;
  @override
  String get countryCode;
  @override
  String get job;
  @override
  int get jobId;
  @override
  int get totalFollowUsers;
  @override
  int get totalMypixivUsers;
  @override
  int get totalIllusts;
  @override
  int get totalManga;
  @override
  int get totalNovels;
  @override
  int get totalIllustBookmarksPublic;
  @override
  int get totalIllustSeries;
  @override
  int get totalNovelSeries;
  @override
  String? get backgroundImageUrl;
  @override
  String get twitterAccount;
  @override
  String? get twitterUrl;
  @override
  String? get pawooUrl;
  @override
  bool get isPremium;
  @override
  bool get isUsingCustomProfileImage;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfilePublicity _$ProfilePublicityFromJson(Map<String, dynamic> json) {
  return _ProfilePublicity.fromJson(json);
}

/// @nodoc
mixin _$ProfilePublicity {
  Privacy get gender => throw _privateConstructorUsedError;
  Privacy get region => throw _privateConstructorUsedError;
  Privacy get birthDay => throw _privateConstructorUsedError;
  Privacy get birthYear => throw _privateConstructorUsedError;
  Privacy get job => throw _privateConstructorUsedError;
  bool get pawoo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePublicityCopyWith<ProfilePublicity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePublicityCopyWith<$Res> {
  factory $ProfilePublicityCopyWith(
          ProfilePublicity value, $Res Function(ProfilePublicity) then) =
      _$ProfilePublicityCopyWithImpl<$Res, ProfilePublicity>;
  @useResult
  $Res call(
      {Privacy gender,
      Privacy region,
      Privacy birthDay,
      Privacy birthYear,
      Privacy job,
      bool pawoo});
}

/// @nodoc
class _$ProfilePublicityCopyWithImpl<$Res, $Val extends ProfilePublicity>
    implements $ProfilePublicityCopyWith<$Res> {
  _$ProfilePublicityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? region = null,
    Object? birthDay = null,
    Object? birthYear = null,
    Object? job = null,
    Object? pawoo = null,
  }) {
    return _then(_value.copyWith(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Privacy,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Privacy,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as Privacy,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as Privacy,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Privacy,
      pawoo: null == pawoo
          ? _value.pawoo
          : pawoo // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePublicityCopyWith<$Res>
    implements $ProfilePublicityCopyWith<$Res> {
  factory _$$_ProfilePublicityCopyWith(
          _$_ProfilePublicity value, $Res Function(_$_ProfilePublicity) then) =
      __$$_ProfilePublicityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Privacy gender,
      Privacy region,
      Privacy birthDay,
      Privacy birthYear,
      Privacy job,
      bool pawoo});
}

/// @nodoc
class __$$_ProfilePublicityCopyWithImpl<$Res>
    extends _$ProfilePublicityCopyWithImpl<$Res, _$_ProfilePublicity>
    implements _$$_ProfilePublicityCopyWith<$Res> {
  __$$_ProfilePublicityCopyWithImpl(
      _$_ProfilePublicity _value, $Res Function(_$_ProfilePublicity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = null,
    Object? region = null,
    Object? birthDay = null,
    Object? birthYear = null,
    Object? job = null,
    Object? pawoo = null,
  }) {
    return _then(_$_ProfilePublicity(
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Privacy,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as Privacy,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as Privacy,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as Privacy,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as Privacy,
      pawoo: null == pawoo
          ? _value.pawoo
          : pawoo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePublicity implements _ProfilePublicity {
  _$_ProfilePublicity(
      {required this.gender,
      required this.region,
      required this.birthDay,
      required this.birthYear,
      required this.job,
      required this.pawoo});

  factory _$_ProfilePublicity.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePublicityFromJson(json);

  @override
  final Privacy gender;
  @override
  final Privacy region;
  @override
  final Privacy birthDay;
  @override
  final Privacy birthYear;
  @override
  final Privacy job;
  @override
  final bool pawoo;

  @override
  String toString() {
    return 'ProfilePublicity(gender: $gender, region: $region, birthDay: $birthDay, birthYear: $birthYear, job: $job, pawoo: $pawoo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePublicity &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.job, job) || other.job == job) &&
            (identical(other.pawoo, pawoo) || other.pawoo == pawoo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, gender, region, birthDay, birthYear, job, pawoo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePublicityCopyWith<_$_ProfilePublicity> get copyWith =>
      __$$_ProfilePublicityCopyWithImpl<_$_ProfilePublicity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePublicityToJson(
      this,
    );
  }
}

abstract class _ProfilePublicity implements ProfilePublicity {
  factory _ProfilePublicity(
      {required final Privacy gender,
      required final Privacy region,
      required final Privacy birthDay,
      required final Privacy birthYear,
      required final Privacy job,
      required final bool pawoo}) = _$_ProfilePublicity;

  factory _ProfilePublicity.fromJson(Map<String, dynamic> json) =
      _$_ProfilePublicity.fromJson;

  @override
  Privacy get gender;
  @override
  Privacy get region;
  @override
  Privacy get birthDay;
  @override
  Privacy get birthYear;
  @override
  Privacy get job;
  @override
  bool get pawoo;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePublicityCopyWith<_$_ProfilePublicity> get copyWith =>
      throw _privateConstructorUsedError;
}

Workspace _$WorkspaceFromJson(Map<String, dynamic> json) {
  return _Workspace.fromJson(json);
}

/// @nodoc
mixin _$Workspace {
  String get pc => throw _privateConstructorUsedError;
  String get monitor => throw _privateConstructorUsedError;
  String get tool => throw _privateConstructorUsedError;
  String get scanner => throw _privateConstructorUsedError;
  String get tablet => throw _privateConstructorUsedError;
  String get mouse => throw _privateConstructorUsedError;
  String get printer => throw _privateConstructorUsedError;
  String get desktop => throw _privateConstructorUsedError;
  String get music => throw _privateConstructorUsedError;
  String get desk => throw _privateConstructorUsedError;
  String get chair => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String? get workspaceImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkspaceCopyWith<Workspace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkspaceCopyWith<$Res> {
  factory $WorkspaceCopyWith(Workspace value, $Res Function(Workspace) then) =
      _$WorkspaceCopyWithImpl<$Res, Workspace>;
  @useResult
  $Res call(
      {String pc,
      String monitor,
      String tool,
      String scanner,
      String tablet,
      String mouse,
      String printer,
      String desktop,
      String music,
      String desk,
      String chair,
      String comment,
      String? workspaceImageUrl});
}

/// @nodoc
class _$WorkspaceCopyWithImpl<$Res, $Val extends Workspace>
    implements $WorkspaceCopyWith<$Res> {
  _$WorkspaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pc = null,
    Object? monitor = null,
    Object? tool = null,
    Object? scanner = null,
    Object? tablet = null,
    Object? mouse = null,
    Object? printer = null,
    Object? desktop = null,
    Object? music = null,
    Object? desk = null,
    Object? chair = null,
    Object? comment = null,
    Object? workspaceImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      pc: null == pc
          ? _value.pc
          : pc // ignore: cast_nullable_to_non_nullable
              as String,
      monitor: null == monitor
          ? _value.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as String,
      scanner: null == scanner
          ? _value.scanner
          : scanner // ignore: cast_nullable_to_non_nullable
              as String,
      tablet: null == tablet
          ? _value.tablet
          : tablet // ignore: cast_nullable_to_non_nullable
              as String,
      mouse: null == mouse
          ? _value.mouse
          : mouse // ignore: cast_nullable_to_non_nullable
              as String,
      printer: null == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as String,
      desktop: null == desktop
          ? _value.desktop
          : desktop // ignore: cast_nullable_to_non_nullable
              as String,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as String,
      desk: null == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as String,
      chair: null == chair
          ? _value.chair
          : chair // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      workspaceImageUrl: freezed == workspaceImageUrl
          ? _value.workspaceImageUrl
          : workspaceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WorkspaceCopyWith<$Res> implements $WorkspaceCopyWith<$Res> {
  factory _$$_WorkspaceCopyWith(
          _$_Workspace value, $Res Function(_$_Workspace) then) =
      __$$_WorkspaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String pc,
      String monitor,
      String tool,
      String scanner,
      String tablet,
      String mouse,
      String printer,
      String desktop,
      String music,
      String desk,
      String chair,
      String comment,
      String? workspaceImageUrl});
}

/// @nodoc
class __$$_WorkspaceCopyWithImpl<$Res>
    extends _$WorkspaceCopyWithImpl<$Res, _$_Workspace>
    implements _$$_WorkspaceCopyWith<$Res> {
  __$$_WorkspaceCopyWithImpl(
      _$_Workspace _value, $Res Function(_$_Workspace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pc = null,
    Object? monitor = null,
    Object? tool = null,
    Object? scanner = null,
    Object? tablet = null,
    Object? mouse = null,
    Object? printer = null,
    Object? desktop = null,
    Object? music = null,
    Object? desk = null,
    Object? chair = null,
    Object? comment = null,
    Object? workspaceImageUrl = freezed,
  }) {
    return _then(_$_Workspace(
      pc: null == pc
          ? _value.pc
          : pc // ignore: cast_nullable_to_non_nullable
              as String,
      monitor: null == monitor
          ? _value.monitor
          : monitor // ignore: cast_nullable_to_non_nullable
              as String,
      tool: null == tool
          ? _value.tool
          : tool // ignore: cast_nullable_to_non_nullable
              as String,
      scanner: null == scanner
          ? _value.scanner
          : scanner // ignore: cast_nullable_to_non_nullable
              as String,
      tablet: null == tablet
          ? _value.tablet
          : tablet // ignore: cast_nullable_to_non_nullable
              as String,
      mouse: null == mouse
          ? _value.mouse
          : mouse // ignore: cast_nullable_to_non_nullable
              as String,
      printer: null == printer
          ? _value.printer
          : printer // ignore: cast_nullable_to_non_nullable
              as String,
      desktop: null == desktop
          ? _value.desktop
          : desktop // ignore: cast_nullable_to_non_nullable
              as String,
      music: null == music
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as String,
      desk: null == desk
          ? _value.desk
          : desk // ignore: cast_nullable_to_non_nullable
              as String,
      chair: null == chair
          ? _value.chair
          : chair // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      workspaceImageUrl: freezed == workspaceImageUrl
          ? _value.workspaceImageUrl
          : workspaceImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Workspace implements _Workspace {
  _$_Workspace(
      {required this.pc,
      required this.monitor,
      required this.tool,
      required this.scanner,
      required this.tablet,
      required this.mouse,
      required this.printer,
      required this.desktop,
      required this.music,
      required this.desk,
      required this.chair,
      required this.comment,
      required this.workspaceImageUrl});

  factory _$_Workspace.fromJson(Map<String, dynamic> json) =>
      _$$_WorkspaceFromJson(json);

  @override
  final String pc;
  @override
  final String monitor;
  @override
  final String tool;
  @override
  final String scanner;
  @override
  final String tablet;
  @override
  final String mouse;
  @override
  final String printer;
  @override
  final String desktop;
  @override
  final String music;
  @override
  final String desk;
  @override
  final String chair;
  @override
  final String comment;
  @override
  final String? workspaceImageUrl;

  @override
  String toString() {
    return 'Workspace(pc: $pc, monitor: $monitor, tool: $tool, scanner: $scanner, tablet: $tablet, mouse: $mouse, printer: $printer, desktop: $desktop, music: $music, desk: $desk, chair: $chair, comment: $comment, workspaceImageUrl: $workspaceImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Workspace &&
            (identical(other.pc, pc) || other.pc == pc) &&
            (identical(other.monitor, monitor) || other.monitor == monitor) &&
            (identical(other.tool, tool) || other.tool == tool) &&
            (identical(other.scanner, scanner) || other.scanner == scanner) &&
            (identical(other.tablet, tablet) || other.tablet == tablet) &&
            (identical(other.mouse, mouse) || other.mouse == mouse) &&
            (identical(other.printer, printer) || other.printer == printer) &&
            (identical(other.desktop, desktop) || other.desktop == desktop) &&
            (identical(other.music, music) || other.music == music) &&
            (identical(other.desk, desk) || other.desk == desk) &&
            (identical(other.chair, chair) || other.chair == chair) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.workspaceImageUrl, workspaceImageUrl) ||
                other.workspaceImageUrl == workspaceImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pc,
      monitor,
      tool,
      scanner,
      tablet,
      mouse,
      printer,
      desktop,
      music,
      desk,
      chair,
      comment,
      workspaceImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WorkspaceCopyWith<_$_Workspace> get copyWith =>
      __$$_WorkspaceCopyWithImpl<_$_Workspace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorkspaceToJson(
      this,
    );
  }
}

abstract class _Workspace implements Workspace {
  factory _Workspace(
      {required final String pc,
      required final String monitor,
      required final String tool,
      required final String scanner,
      required final String tablet,
      required final String mouse,
      required final String printer,
      required final String desktop,
      required final String music,
      required final String desk,
      required final String chair,
      required final String comment,
      required final String? workspaceImageUrl}) = _$_Workspace;

  factory _Workspace.fromJson(Map<String, dynamic> json) =
      _$_Workspace.fromJson;

  @override
  String get pc;
  @override
  String get monitor;
  @override
  String get tool;
  @override
  String get scanner;
  @override
  String get tablet;
  @override
  String get mouse;
  @override
  String get printer;
  @override
  String get desktop;
  @override
  String get music;
  @override
  String get desk;
  @override
  String get chair;
  @override
  String get comment;
  @override
  String? get workspaceImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_WorkspaceCopyWith<_$_Workspace> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  return _UserDetail.fromJson(json);
}

/// @nodoc
mixin _$UserDetail {
  UserInfo get user => throw _privateConstructorUsedError;
  Profile get profile => throw _privateConstructorUsedError;
  ProfilePublicity get profilePublicity => throw _privateConstructorUsedError;
  Workspace get workspace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailCopyWith<UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
  @useResult
  $Res call(
      {UserInfo user,
      Profile profile,
      ProfilePublicity profilePublicity,
      Workspace workspace});

  $UserInfoCopyWith<$Res> get user;
  $ProfileCopyWith<$Res> get profile;
  $ProfilePublicityCopyWith<$Res> get profilePublicity;
  $WorkspaceCopyWith<$Res> get workspace;
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? profile = null,
    Object? profilePublicity = null,
    Object? workspace = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      profilePublicity: null == profilePublicity
          ? _value.profilePublicity
          : profilePublicity // ignore: cast_nullable_to_non_nullable
              as ProfilePublicity,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as Workspace,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfilePublicityCopyWith<$Res> get profilePublicity {
    return $ProfilePublicityCopyWith<$Res>(_value.profilePublicity, (value) {
      return _then(_value.copyWith(profilePublicity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkspaceCopyWith<$Res> get workspace {
    return $WorkspaceCopyWith<$Res>(_value.workspace, (value) {
      return _then(_value.copyWith(workspace: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDetailCopyWith<$Res>
    implements $UserDetailCopyWith<$Res> {
  factory _$$_UserDetailCopyWith(
          _$_UserDetail value, $Res Function(_$_UserDetail) then) =
      __$$_UserDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfo user,
      Profile profile,
      ProfilePublicity profilePublicity,
      Workspace workspace});

  @override
  $UserInfoCopyWith<$Res> get user;
  @override
  $ProfileCopyWith<$Res> get profile;
  @override
  $ProfilePublicityCopyWith<$Res> get profilePublicity;
  @override
  $WorkspaceCopyWith<$Res> get workspace;
}

/// @nodoc
class __$$_UserDetailCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$_UserDetail>
    implements _$$_UserDetailCopyWith<$Res> {
  __$$_UserDetailCopyWithImpl(
      _$_UserDetail _value, $Res Function(_$_UserDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? profile = null,
    Object? profilePublicity = null,
    Object? workspace = null,
  }) {
    return _then(_$_UserDetail(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      profilePublicity: null == profilePublicity
          ? _value.profilePublicity
          : profilePublicity // ignore: cast_nullable_to_non_nullable
              as ProfilePublicity,
      workspace: null == workspace
          ? _value.workspace
          : workspace // ignore: cast_nullable_to_non_nullable
              as Workspace,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetail implements _UserDetail {
  _$_UserDetail(
      {required this.user,
      required this.profile,
      required this.profilePublicity,
      required this.workspace});

  factory _$_UserDetail.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailFromJson(json);

  @override
  final UserInfo user;
  @override
  final Profile profile;
  @override
  final ProfilePublicity profilePublicity;
  @override
  final Workspace workspace;

  @override
  String toString() {
    return 'UserDetail(user: $user, profile: $profile, profilePublicity: $profilePublicity, workspace: $workspace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetail &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.profilePublicity, profilePublicity) ||
                other.profilePublicity == profilePublicity) &&
            (identical(other.workspace, workspace) ||
                other.workspace == workspace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, user, profile, profilePublicity, workspace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      __$$_UserDetailCopyWithImpl<_$_UserDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailToJson(
      this,
    );
  }
}

abstract class _UserDetail implements UserDetail {
  factory _UserDetail(
      {required final UserInfo user,
      required final Profile profile,
      required final ProfilePublicity profilePublicity,
      required final Workspace workspace}) = _$_UserDetail;

  factory _UserDetail.fromJson(Map<String, dynamic> json) =
      _$_UserDetail.fromJson;

  @override
  UserInfo get user;
  @override
  Profile get profile;
  @override
  ProfilePublicity get profilePublicity;
  @override
  Workspace get workspace;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailCopyWith<_$_UserDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
