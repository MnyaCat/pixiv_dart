// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_image_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileImageUrls _$ProfileImageUrlsFromJson(Map<String, dynamic> json) {
  return _ProfileImageUrls.fromJson(json);
}

/// @nodoc
mixin _$ProfileImageUrls {
  String get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileImageUrlsCopyWith<ProfileImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileImageUrlsCopyWith<$Res> {
  factory $ProfileImageUrlsCopyWith(
          ProfileImageUrls value, $Res Function(ProfileImageUrls) then) =
      _$ProfileImageUrlsCopyWithImpl<$Res, ProfileImageUrls>;
  @useResult
  $Res call({String medium});
}

/// @nodoc
class _$ProfileImageUrlsCopyWithImpl<$Res, $Val extends ProfileImageUrls>
    implements $ProfileImageUrlsCopyWith<$Res> {
  _$ProfileImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_value.copyWith(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileImageUrlsCopyWith<$Res>
    implements $ProfileImageUrlsCopyWith<$Res> {
  factory _$$_ProfileImageUrlsCopyWith(
          _$_ProfileImageUrls value, $Res Function(_$_ProfileImageUrls) then) =
      __$$_ProfileImageUrlsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medium});
}

/// @nodoc
class __$$_ProfileImageUrlsCopyWithImpl<$Res>
    extends _$ProfileImageUrlsCopyWithImpl<$Res, _$_ProfileImageUrls>
    implements _$$_ProfileImageUrlsCopyWith<$Res> {
  __$$_ProfileImageUrlsCopyWithImpl(
      _$_ProfileImageUrls _value, $Res Function(_$_ProfileImageUrls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$_ProfileImageUrls(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileImageUrls implements _ProfileImageUrls {
  _$_ProfileImageUrls({required this.medium});

  factory _$_ProfileImageUrls.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileImageUrlsFromJson(json);

  @override
  final String medium;

  @override
  String toString() {
    return 'ProfileImageUrls(medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileImageUrls &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileImageUrlsCopyWith<_$_ProfileImageUrls> get copyWith =>
      __$$_ProfileImageUrlsCopyWithImpl<_$_ProfileImageUrls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileImageUrlsToJson(
      this,
    );
  }
}

abstract class _ProfileImageUrls implements ProfileImageUrls {
  factory _ProfileImageUrls({required final String medium}) =
      _$_ProfileImageUrls;

  factory _ProfileImageUrls.fromJson(Map<String, dynamic> json) =
      _$_ProfileImageUrls.fromJson;

  @override
  String get medium;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileImageUrlsCopyWith<_$_ProfileImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}
