// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_previews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPreviews _$UserPreviewsFromJson(Map<String, dynamic> json) {
  return _UserPreviews.fromJson(json);
}

/// @nodoc
mixin _$UserPreviews {
  List<UserPreview> get userPreviews => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreviewsCopyWith<UserPreviews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreviewsCopyWith<$Res> {
  factory $UserPreviewsCopyWith(
          UserPreviews value, $Res Function(UserPreviews) then) =
      _$UserPreviewsCopyWithImpl<$Res, UserPreviews>;
  @useResult
  $Res call({List<UserPreview> userPreviews, String? nextUrl});
}

/// @nodoc
class _$UserPreviewsCopyWithImpl<$Res, $Val extends UserPreviews>
    implements $UserPreviewsCopyWith<$Res> {
  _$UserPreviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPreviews = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userPreviews: null == userPreviews
          ? _value.userPreviews
          : userPreviews // ignore: cast_nullable_to_non_nullable
              as List<UserPreview>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserPreviewsCopyWith<$Res>
    implements $UserPreviewsCopyWith<$Res> {
  factory _$$_UserPreviewsCopyWith(
          _$_UserPreviews value, $Res Function(_$_UserPreviews) then) =
      __$$_UserPreviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserPreview> userPreviews, String? nextUrl});
}

/// @nodoc
class __$$_UserPreviewsCopyWithImpl<$Res>
    extends _$UserPreviewsCopyWithImpl<$Res, _$_UserPreviews>
    implements _$$_UserPreviewsCopyWith<$Res> {
  __$$_UserPreviewsCopyWithImpl(
      _$_UserPreviews _value, $Res Function(_$_UserPreviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userPreviews = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_$_UserPreviews(
      userPreviews: null == userPreviews
          ? _value._userPreviews
          : userPreviews // ignore: cast_nullable_to_non_nullable
              as List<UserPreview>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPreviews implements _UserPreviews {
  _$_UserPreviews(
      {required final List<UserPreview> userPreviews, required this.nextUrl})
      : _userPreviews = userPreviews;

  factory _$_UserPreviews.fromJson(Map<String, dynamic> json) =>
      _$$_UserPreviewsFromJson(json);

  final List<UserPreview> _userPreviews;
  @override
  List<UserPreview> get userPreviews {
    if (_userPreviews is EqualUnmodifiableListView) return _userPreviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userPreviews);
  }

  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'UserPreviews(userPreviews: $userPreviews, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPreviews &&
            const DeepCollectionEquality()
                .equals(other._userPreviews, _userPreviews) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_userPreviews), nextUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPreviewsCopyWith<_$_UserPreviews> get copyWith =>
      __$$_UserPreviewsCopyWithImpl<_$_UserPreviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPreviewsToJson(
      this,
    );
  }
}

abstract class _UserPreviews implements UserPreviews {
  factory _UserPreviews(
      {required final List<UserPreview> userPreviews,
      required final String? nextUrl}) = _$_UserPreviews;

  factory _UserPreviews.fromJson(Map<String, dynamic> json) =
      _$_UserPreviews.fromJson;

  @override
  List<UserPreview> get userPreviews;
  @override
  String? get nextUrl;
  @override
  @JsonKey(ignore: true)
  _$$_UserPreviewsCopyWith<_$_UserPreviews> get copyWith =>
      throw _privateConstructorUsedError;
}
