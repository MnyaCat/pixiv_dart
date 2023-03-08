// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

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
  String? get comment => throw _privateConstructorUsedError;
  bool get isFollowed => throw _privateConstructorUsedError;
  bool? get isAccessBlockingUser => throw _privateConstructorUsedError;

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
      String? comment,
      bool isFollowed,
      bool? isAccessBlockingUser});

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
    Object? comment = freezed,
    Object? isFollowed = null,
    Object? isAccessBlockingUser = freezed,
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
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccessBlockingUser: freezed == isAccessBlockingUser
          ? _value.isAccessBlockingUser
          : isAccessBlockingUser // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      String? comment,
      bool isFollowed,
      bool? isAccessBlockingUser});

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
    Object? comment = freezed,
    Object? isFollowed = null,
    Object? isAccessBlockingUser = freezed,
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
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowed: null == isFollowed
          ? _value.isFollowed
          : isFollowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccessBlockingUser: freezed == isAccessBlockingUser
          ? _value.isAccessBlockingUser
          : isAccessBlockingUser // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      this.comment,
      required this.isFollowed,
      this.isAccessBlockingUser});

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
  final String? comment;
  @override
  final bool isFollowed;
  @override
  final bool? isAccessBlockingUser;

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
      final String? comment,
      required final bool isFollowed,
      final bool? isAccessBlockingUser}) = _$_UserInfo;

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
  String? get comment;
  @override
  bool get isFollowed;
  @override
  bool? get isAccessBlockingUser;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoCopyWith<_$_UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
