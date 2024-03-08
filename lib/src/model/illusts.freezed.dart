// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'illusts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Illusts _$IllustsFromJson(Map<String, dynamic> json) {
  return _Illusts.fromJson(json);
}

/// @nodoc
mixin _$Illusts {
  List<Illust> get illusts => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllustsCopyWith<Illusts> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllustsCopyWith<$Res> {
  factory $IllustsCopyWith(Illusts value, $Res Function(Illusts) then) =
      _$IllustsCopyWithImpl<$Res, Illusts>;
  @useResult
  $Res call({List<Illust> illusts, String? nextUrl});
}

/// @nodoc
class _$IllustsCopyWithImpl<$Res, $Val extends Illusts>
    implements $IllustsCopyWith<$Res> {
  _$IllustsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illusts = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_value.copyWith(
      illusts: null == illusts
          ? _value.illusts
          : illusts // ignore: cast_nullable_to_non_nullable
              as List<Illust>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IllustsImplCopyWith<$Res> implements $IllustsCopyWith<$Res> {
  factory _$$IllustsImplCopyWith(
          _$IllustsImpl value, $Res Function(_$IllustsImpl) then) =
      __$$IllustsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Illust> illusts, String? nextUrl});
}

/// @nodoc
class __$$IllustsImplCopyWithImpl<$Res>
    extends _$IllustsCopyWithImpl<$Res, _$IllustsImpl>
    implements _$$IllustsImplCopyWith<$Res> {
  __$$IllustsImplCopyWithImpl(
      _$IllustsImpl _value, $Res Function(_$IllustsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illusts = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_$IllustsImpl(
      illusts: null == illusts
          ? _value._illusts
          : illusts // ignore: cast_nullable_to_non_nullable
              as List<Illust>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IllustsImpl implements _Illusts {
  _$IllustsImpl({required final List<Illust> illusts, required this.nextUrl})
      : _illusts = illusts;

  factory _$IllustsImpl.fromJson(Map<String, dynamic> json) =>
      _$$IllustsImplFromJson(json);

  final List<Illust> _illusts;
  @override
  List<Illust> get illusts {
    if (_illusts is EqualUnmodifiableListView) return _illusts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_illusts);
  }

  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'Illusts(illusts: $illusts, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IllustsImpl &&
            const DeepCollectionEquality().equals(other._illusts, _illusts) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_illusts), nextUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IllustsImplCopyWith<_$IllustsImpl> get copyWith =>
      __$$IllustsImplCopyWithImpl<_$IllustsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IllustsImplToJson(
      this,
    );
  }
}

abstract class _Illusts implements Illusts {
  factory _Illusts(
      {required final List<Illust> illusts,
      required final String? nextUrl}) = _$IllustsImpl;

  factory _Illusts.fromJson(Map<String, dynamic> json) = _$IllustsImpl.fromJson;

  @override
  List<Illust> get illusts;
  @override
  String? get nextUrl;
  @override
  @JsonKey(ignore: true)
  _$$IllustsImplCopyWith<_$IllustsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
