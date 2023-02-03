// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CllientUserProfileImageUrls _$CllientUserProfileImageUrlsFromJson(
    Map<String, dynamic> json) {
  return _CllientUserProfileImageUrls.fromJson(json);
}

/// @nodoc
mixin _$CllientUserProfileImageUrls {
  @JsonKey(name: 'px_16x16')
  String get px16x16 => throw _privateConstructorUsedError;
  @JsonKey(name: 'px_50x50')
  String get px50x50 => throw _privateConstructorUsedError;
  @JsonKey(name: 'px_170x170')
  String get px170x170 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CllientUserProfileImageUrlsCopyWith<CllientUserProfileImageUrls>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CllientUserProfileImageUrlsCopyWith<$Res> {
  factory $CllientUserProfileImageUrlsCopyWith(
          CllientUserProfileImageUrls value,
          $Res Function(CllientUserProfileImageUrls) then) =
      _$CllientUserProfileImageUrlsCopyWithImpl<$Res,
          CllientUserProfileImageUrls>;
  @useResult
  $Res call(
      {@JsonKey(name: 'px_16x16') String px16x16,
      @JsonKey(name: 'px_50x50') String px50x50,
      @JsonKey(name: 'px_170x170') String px170x170});
}

/// @nodoc
class _$CllientUserProfileImageUrlsCopyWithImpl<$Res,
        $Val extends CllientUserProfileImageUrls>
    implements $CllientUserProfileImageUrlsCopyWith<$Res> {
  _$CllientUserProfileImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? px16x16 = null,
    Object? px50x50 = null,
    Object? px170x170 = null,
  }) {
    return _then(_value.copyWith(
      px16x16: null == px16x16
          ? _value.px16x16
          : px16x16 // ignore: cast_nullable_to_non_nullable
              as String,
      px50x50: null == px50x50
          ? _value.px50x50
          : px50x50 // ignore: cast_nullable_to_non_nullable
              as String,
      px170x170: null == px170x170
          ? _value.px170x170
          : px170x170 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CllientUserProfileImageUrlsCopyWith<$Res>
    implements $CllientUserProfileImageUrlsCopyWith<$Res> {
  factory _$$_CllientUserProfileImageUrlsCopyWith(
          _$_CllientUserProfileImageUrls value,
          $Res Function(_$_CllientUserProfileImageUrls) then) =
      __$$_CllientUserProfileImageUrlsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'px_16x16') String px16x16,
      @JsonKey(name: 'px_50x50') String px50x50,
      @JsonKey(name: 'px_170x170') String px170x170});
}

/// @nodoc
class __$$_CllientUserProfileImageUrlsCopyWithImpl<$Res>
    extends _$CllientUserProfileImageUrlsCopyWithImpl<$Res,
        _$_CllientUserProfileImageUrls>
    implements _$$_CllientUserProfileImageUrlsCopyWith<$Res> {
  __$$_CllientUserProfileImageUrlsCopyWithImpl(
      _$_CllientUserProfileImageUrls _value,
      $Res Function(_$_CllientUserProfileImageUrls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? px16x16 = null,
    Object? px50x50 = null,
    Object? px170x170 = null,
  }) {
    return _then(_$_CllientUserProfileImageUrls(
      px16x16: null == px16x16
          ? _value.px16x16
          : px16x16 // ignore: cast_nullable_to_non_nullable
              as String,
      px50x50: null == px50x50
          ? _value.px50x50
          : px50x50 // ignore: cast_nullable_to_non_nullable
              as String,
      px170x170: null == px170x170
          ? _value.px170x170
          : px170x170 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CllientUserProfileImageUrls implements _CllientUserProfileImageUrls {
  _$_CllientUserProfileImageUrls(
      {@JsonKey(name: 'px_16x16') required this.px16x16,
      @JsonKey(name: 'px_50x50') required this.px50x50,
      @JsonKey(name: 'px_170x170') required this.px170x170});

  factory _$_CllientUserProfileImageUrls.fromJson(Map<String, dynamic> json) =>
      _$$_CllientUserProfileImageUrlsFromJson(json);

  @override
  @JsonKey(name: 'px_16x16')
  final String px16x16;
  @override
  @JsonKey(name: 'px_50x50')
  final String px50x50;
  @override
  @JsonKey(name: 'px_170x170')
  final String px170x170;

  @override
  String toString() {
    return 'CllientUserProfileImageUrls(px16x16: $px16x16, px50x50: $px50x50, px170x170: $px170x170)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CllientUserProfileImageUrls &&
            (identical(other.px16x16, px16x16) || other.px16x16 == px16x16) &&
            (identical(other.px50x50, px50x50) || other.px50x50 == px50x50) &&
            (identical(other.px170x170, px170x170) ||
                other.px170x170 == px170x170));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, px16x16, px50x50, px170x170);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CllientUserProfileImageUrlsCopyWith<_$_CllientUserProfileImageUrls>
      get copyWith => __$$_CllientUserProfileImageUrlsCopyWithImpl<
          _$_CllientUserProfileImageUrls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CllientUserProfileImageUrlsToJson(
      this,
    );
  }
}

abstract class _CllientUserProfileImageUrls
    implements CllientUserProfileImageUrls {
  factory _CllientUserProfileImageUrls(
          {@JsonKey(name: 'px_16x16') required final String px16x16,
          @JsonKey(name: 'px_50x50') required final String px50x50,
          @JsonKey(name: 'px_170x170') required final String px170x170}) =
      _$_CllientUserProfileImageUrls;

  factory _CllientUserProfileImageUrls.fromJson(Map<String, dynamic> json) =
      _$_CllientUserProfileImageUrls.fromJson;

  @override
  @JsonKey(name: 'px_16x16')
  String get px16x16;
  @override
  @JsonKey(name: 'px_50x50')
  String get px50x50;
  @override
  @JsonKey(name: 'px_170x170')
  String get px170x170;
  @override
  @JsonKey(ignore: true)
  _$$_CllientUserProfileImageUrlsCopyWith<_$_CllientUserProfileImageUrls>
      get copyWith => throw _privateConstructorUsedError;
}

ClientUser _$ClientUserFromJson(Map<String, dynamic> json) {
  return _ClientUser.fromJson(json);
}

/// @nodoc
mixin _$ClientUser {
  CllientUserProfileImageUrls get profileImageUrls =>
      throw _privateConstructorUsedError;
  @IdConverter()
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  String get mailAddress => throw _privateConstructorUsedError;
  bool get isPremium => throw _privateConstructorUsedError;
  int get xRestrict => throw _privateConstructorUsedError;
  bool get isMailAuthorized => throw _privateConstructorUsedError;
  bool get requirePolicyAgreement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientUserCopyWith<ClientUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientUserCopyWith<$Res> {
  factory $ClientUserCopyWith(
          ClientUser value, $Res Function(ClientUser) then) =
      _$ClientUserCopyWithImpl<$Res, ClientUser>;
  @useResult
  $Res call(
      {CllientUserProfileImageUrls profileImageUrls,
      @IdConverter() int id,
      String name,
      String account,
      String mailAddress,
      bool isPremium,
      int xRestrict,
      bool isMailAuthorized,
      bool requirePolicyAgreement});

  $CllientUserProfileImageUrlsCopyWith<$Res> get profileImageUrls;
}

/// @nodoc
class _$ClientUserCopyWithImpl<$Res, $Val extends ClientUser>
    implements $ClientUserCopyWith<$Res> {
  _$ClientUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImageUrls = null,
    Object? id = null,
    Object? name = null,
    Object? account = null,
    Object? mailAddress = null,
    Object? isPremium = null,
    Object? xRestrict = null,
    Object? isMailAuthorized = null,
    Object? requirePolicyAgreement = null,
  }) {
    return _then(_value.copyWith(
      profileImageUrls: null == profileImageUrls
          ? _value.profileImageUrls
          : profileImageUrls // ignore: cast_nullable_to_non_nullable
              as CllientUserProfileImageUrls,
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
      mailAddress: null == mailAddress
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      isMailAuthorized: null == isMailAuthorized
          ? _value.isMailAuthorized
          : isMailAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      requirePolicyAgreement: null == requirePolicyAgreement
          ? _value.requirePolicyAgreement
          : requirePolicyAgreement // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CllientUserProfileImageUrlsCopyWith<$Res> get profileImageUrls {
    return $CllientUserProfileImageUrlsCopyWith<$Res>(_value.profileImageUrls,
        (value) {
      return _then(_value.copyWith(profileImageUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClientUserCopyWith<$Res>
    implements $ClientUserCopyWith<$Res> {
  factory _$$_ClientUserCopyWith(
          _$_ClientUser value, $Res Function(_$_ClientUser) then) =
      __$$_ClientUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CllientUserProfileImageUrls profileImageUrls,
      @IdConverter() int id,
      String name,
      String account,
      String mailAddress,
      bool isPremium,
      int xRestrict,
      bool isMailAuthorized,
      bool requirePolicyAgreement});

  @override
  $CllientUserProfileImageUrlsCopyWith<$Res> get profileImageUrls;
}

/// @nodoc
class __$$_ClientUserCopyWithImpl<$Res>
    extends _$ClientUserCopyWithImpl<$Res, _$_ClientUser>
    implements _$$_ClientUserCopyWith<$Res> {
  __$$_ClientUserCopyWithImpl(
      _$_ClientUser _value, $Res Function(_$_ClientUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImageUrls = null,
    Object? id = null,
    Object? name = null,
    Object? account = null,
    Object? mailAddress = null,
    Object? isPremium = null,
    Object? xRestrict = null,
    Object? isMailAuthorized = null,
    Object? requirePolicyAgreement = null,
  }) {
    return _then(_$_ClientUser(
      profileImageUrls: null == profileImageUrls
          ? _value.profileImageUrls
          : profileImageUrls // ignore: cast_nullable_to_non_nullable
              as CllientUserProfileImageUrls,
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
      mailAddress: null == mailAddress
          ? _value.mailAddress
          : mailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      isPremium: null == isPremium
          ? _value.isPremium
          : isPremium // ignore: cast_nullable_to_non_nullable
              as bool,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      isMailAuthorized: null == isMailAuthorized
          ? _value.isMailAuthorized
          : isMailAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      requirePolicyAgreement: null == requirePolicyAgreement
          ? _value.requirePolicyAgreement
          : requirePolicyAgreement // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ClientUser implements _ClientUser {
  _$_ClientUser(
      {required this.profileImageUrls,
      @IdConverter() required this.id,
      required this.name,
      required this.account,
      required this.mailAddress,
      required this.isPremium,
      required this.xRestrict,
      required this.isMailAuthorized,
      required this.requirePolicyAgreement});

  factory _$_ClientUser.fromJson(Map<String, dynamic> json) =>
      _$$_ClientUserFromJson(json);

  @override
  final CllientUserProfileImageUrls profileImageUrls;
  @override
  @IdConverter()
  final int id;
  @override
  final String name;
  @override
  final String account;
  @override
  final String mailAddress;
  @override
  final bool isPremium;
  @override
  final int xRestrict;
  @override
  final bool isMailAuthorized;
  @override
  final bool requirePolicyAgreement;

  @override
  String toString() {
    return 'ClientUser(profileImageUrls: $profileImageUrls, id: $id, name: $name, account: $account, mailAddress: $mailAddress, isPremium: $isPremium, xRestrict: $xRestrict, isMailAuthorized: $isMailAuthorized, requirePolicyAgreement: $requirePolicyAgreement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientUser &&
            (identical(other.profileImageUrls, profileImageUrls) ||
                other.profileImageUrls == profileImageUrls) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.mailAddress, mailAddress) ||
                other.mailAddress == mailAddress) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.xRestrict, xRestrict) ||
                other.xRestrict == xRestrict) &&
            (identical(other.isMailAuthorized, isMailAuthorized) ||
                other.isMailAuthorized == isMailAuthorized) &&
            (identical(other.requirePolicyAgreement, requirePolicyAgreement) ||
                other.requirePolicyAgreement == requirePolicyAgreement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileImageUrls,
      id,
      name,
      account,
      mailAddress,
      isPremium,
      xRestrict,
      isMailAuthorized,
      requirePolicyAgreement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClientUserCopyWith<_$_ClientUser> get copyWith =>
      __$$_ClientUserCopyWithImpl<_$_ClientUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClientUserToJson(
      this,
    );
  }
}

abstract class _ClientUser implements ClientUser {
  factory _ClientUser(
      {required final CllientUserProfileImageUrls profileImageUrls,
      @IdConverter() required final int id,
      required final String name,
      required final String account,
      required final String mailAddress,
      required final bool isPremium,
      required final int xRestrict,
      required final bool isMailAuthorized,
      required final bool requirePolicyAgreement}) = _$_ClientUser;

  factory _ClientUser.fromJson(Map<String, dynamic> json) =
      _$_ClientUser.fromJson;

  @override
  CllientUserProfileImageUrls get profileImageUrls;
  @override
  @IdConverter()
  int get id;
  @override
  String get name;
  @override
  String get account;
  @override
  String get mailAddress;
  @override
  bool get isPremium;
  @override
  int get xRestrict;
  @override
  bool get isMailAuthorized;
  @override
  bool get requirePolicyAgreement;
  @override
  @JsonKey(ignore: true)
  _$$_ClientUserCopyWith<_$_ClientUser> get copyWith =>
      throw _privateConstructorUsedError;
}
