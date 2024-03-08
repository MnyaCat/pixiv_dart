// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_urls.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageUrls _$ImageUrlsFromJson(Map<String, dynamic> json) {
  return _ImageUrls.fromJson(json);
}

/// @nodoc
mixin _$ImageUrls {
  String get squareMedium => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlsCopyWith<ImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlsCopyWith<$Res> {
  factory $ImageUrlsCopyWith(ImageUrls value, $Res Function(ImageUrls) then) =
      _$ImageUrlsCopyWithImpl<$Res, ImageUrls>;
  @useResult
  $Res call({String squareMedium, String medium, String large});
}

/// @nodoc
class _$ImageUrlsCopyWithImpl<$Res, $Val extends ImageUrls>
    implements $ImageUrlsCopyWith<$Res> {
  _$ImageUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? squareMedium = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_value.copyWith(
      squareMedium: null == squareMedium
          ? _value.squareMedium
          : squareMedium // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlsImplCopyWith<$Res>
    implements $ImageUrlsCopyWith<$Res> {
  factory _$$ImageUrlsImplCopyWith(
          _$ImageUrlsImpl value, $Res Function(_$ImageUrlsImpl) then) =
      __$$ImageUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String squareMedium, String medium, String large});
}

/// @nodoc
class __$$ImageUrlsImplCopyWithImpl<$Res>
    extends _$ImageUrlsCopyWithImpl<$Res, _$ImageUrlsImpl>
    implements _$$ImageUrlsImplCopyWith<$Res> {
  __$$ImageUrlsImplCopyWithImpl(
      _$ImageUrlsImpl _value, $Res Function(_$ImageUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? squareMedium = null,
    Object? medium = null,
    Object? large = null,
  }) {
    return _then(_$ImageUrlsImpl(
      squareMedium: null == squareMedium
          ? _value.squareMedium
          : squareMedium // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlsImpl implements _ImageUrls {
  _$ImageUrlsImpl(
      {required this.squareMedium, required this.medium, required this.large});

  factory _$ImageUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlsImplFromJson(json);

  @override
  final String squareMedium;
  @override
  final String medium;
  @override
  final String large;

  @override
  String toString() {
    return 'ImageUrls(squareMedium: $squareMedium, medium: $medium, large: $large)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlsImpl &&
            (identical(other.squareMedium, squareMedium) ||
                other.squareMedium == squareMedium) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, squareMedium, medium, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlsImplCopyWith<_$ImageUrlsImpl> get copyWith =>
      __$$ImageUrlsImplCopyWithImpl<_$ImageUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlsImplToJson(
      this,
    );
  }
}

abstract class _ImageUrls implements ImageUrls {
  factory _ImageUrls(
      {required final String squareMedium,
      required final String medium,
      required final String large}) = _$ImageUrlsImpl;

  factory _ImageUrls.fromJson(Map<String, dynamic> json) =
      _$ImageUrlsImpl.fromJson;

  @override
  String get squareMedium;
  @override
  String get medium;
  @override
  String get large;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlsImplCopyWith<_$ImageUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
