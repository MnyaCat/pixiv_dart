// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel_bookmarks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NovelBookmarks _$NovelBookmarksFromJson(Map<String, dynamic> json) {
  return _NovelBookmarks.fromJson(json);
}

/// @nodoc
mixin _$NovelBookmarks {
  List<Novel> get novels => throw _privateConstructorUsedError;
  String? get nextUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelBookmarksCopyWith<NovelBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelBookmarksCopyWith<$Res> {
  factory $NovelBookmarksCopyWith(
          NovelBookmarks value, $Res Function(NovelBookmarks) then) =
      _$NovelBookmarksCopyWithImpl<$Res, NovelBookmarks>;
  @useResult
  $Res call({List<Novel> novels, String? nextUrl});
}

/// @nodoc
class _$NovelBookmarksCopyWithImpl<$Res, $Val extends NovelBookmarks>
    implements $NovelBookmarksCopyWith<$Res> {
  _$NovelBookmarksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novels = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_value.copyWith(
      novels: null == novels
          ? _value.novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NovelBookmarksCopyWith<$Res>
    implements $NovelBookmarksCopyWith<$Res> {
  factory _$$_NovelBookmarksCopyWith(
          _$_NovelBookmarks value, $Res Function(_$_NovelBookmarks) then) =
      __$$_NovelBookmarksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Novel> novels, String? nextUrl});
}

/// @nodoc
class __$$_NovelBookmarksCopyWithImpl<$Res>
    extends _$NovelBookmarksCopyWithImpl<$Res, _$_NovelBookmarks>
    implements _$$_NovelBookmarksCopyWith<$Res> {
  __$$_NovelBookmarksCopyWithImpl(
      _$_NovelBookmarks _value, $Res Function(_$_NovelBookmarks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? novels = null,
    Object? nextUrl = freezed,
  }) {
    return _then(_$_NovelBookmarks(
      novels: null == novels
          ? _value._novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
      nextUrl: freezed == nextUrl
          ? _value.nextUrl
          : nextUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NovelBookmarks implements _NovelBookmarks {
  _$_NovelBookmarks({required final List<Novel> novels, required this.nextUrl})
      : _novels = novels;

  factory _$_NovelBookmarks.fromJson(Map<String, dynamic> json) =>
      _$$_NovelBookmarksFromJson(json);

  final List<Novel> _novels;
  @override
  List<Novel> get novels {
    if (_novels is EqualUnmodifiableListView) return _novels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novels);
  }

  @override
  final String? nextUrl;

  @override
  String toString() {
    return 'NovelBookmarks(novels: $novels, nextUrl: $nextUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NovelBookmarks &&
            const DeepCollectionEquality().equals(other._novels, _novels) &&
            (identical(other.nextUrl, nextUrl) || other.nextUrl == nextUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_novels), nextUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelBookmarksCopyWith<_$_NovelBookmarks> get copyWith =>
      __$$_NovelBookmarksCopyWithImpl<_$_NovelBookmarks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NovelBookmarksToJson(
      this,
    );
  }
}

abstract class _NovelBookmarks implements NovelBookmarks {
  factory _NovelBookmarks(
      {required final List<Novel> novels,
      required final String? nextUrl}) = _$_NovelBookmarks;

  factory _NovelBookmarks.fromJson(Map<String, dynamic> json) =
      _$_NovelBookmarks.fromJson;

  @override
  List<Novel> get novels;
  @override
  String? get nextUrl;
  @override
  @JsonKey(ignore: true)
  _$$_NovelBookmarksCopyWith<_$_NovelBookmarks> get copyWith =>
      throw _privateConstructorUsedError;
}
