// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'illust_bookmarks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IllustBookmarks _$IllustBookmarksFromJson(Map<String, dynamic> json) {
  return _IllustBookmarks.fromJson(json);
}

/// @nodoc
mixin _$IllustBookmarks {
  List<Illust> get illusts => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllustBookmarksCopyWith<IllustBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllustBookmarksCopyWith<$Res> {
  factory $IllustBookmarksCopyWith(
          IllustBookmarks value, $Res Function(IllustBookmarks) then) =
      _$IllustBookmarksCopyWithImpl<$Res, IllustBookmarks>;
  @useResult
  $Res call({List<Illust> illusts, String? nextUrl});
}

/// @nodoc
class _$IllustBookmarksCopyWithImpl<$Res, $Val extends IllustBookmarks>
    implements $IllustBookmarksCopyWith<$Res> {
  _$IllustBookmarksCopyWithImpl(this._value, this._then);

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
abstract class _$$_IllustBookmarksCopyWith<$Res>
    implements $IllustBookmarksCopyWith<$Res> {
  factory _$$_IllustBookmarksCopyWith(
          _$_IllustBookmarks value, $Res Function(_$_IllustBookmarks) then) =
      __$$_IllustBookmarksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Illust> illusts, String? nextUrl});
}

/// @nodoc
class __$$_IllustBookmarksCopyWithImpl<$Res>
    extends _$IllustBookmarksCopyWithImpl<$Res, _$_IllustBookmarks>
    implements _$$_IllustBookmarksCopyWith<$Res> {
  __$$_IllustBookmarksCopyWithImpl(
      _$_IllustBookmarks _value, $Res Function(_$_IllustBookmarks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? illusts = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_$_IllustBookmarks(
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
class _$_IllustBookmarks implements _IllustBookmarks {
  _$_IllustBookmarks(
      {required final List<Illust> illusts, required this.nextUrl})
      : _illusts = illusts;

  factory _$_IllustBookmarks.fromJson(Map<String, dynamic> json) =>
      _$$_IllustBookmarksFromJson(json);

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
    return 'IllustBookmarks(illusts: $illusts, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IllustBookmarks &&
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
  _$$_IllustBookmarksCopyWith<_$_IllustBookmarks> get copyWith =>
      __$$_IllustBookmarksCopyWithImpl<_$_IllustBookmarks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IllustBookmarksToJson(
      this,
    );
  }
}

abstract class _IllustBookmarks implements IllustBookmarks {
  factory _IllustBookmarks(
      {required final List<Illust> illusts,
      required final String? nextUrl}) = _$_IllustBookmarks;

  factory _IllustBookmarks.fromJson(Map<String, dynamic> json) =
      _$_IllustBookmarks.fromJson;

  @override
  List<Illust> get illusts;
  @override
  String? get nextUrl;
  @override
  @JsonKey(ignore: true)
  _$$_IllustBookmarksCopyWith<_$_IllustBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}
