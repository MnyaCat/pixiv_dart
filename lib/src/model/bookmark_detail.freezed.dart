// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarkTag _$BookmarkTagFromJson(Map<String, dynamic> json) {
  return _BookmarkTag.fromJson(json);
}

/// @nodoc
mixin _$BookmarkTag {
  String get name => throw _privateConstructorUsedError;
  bool get isRegistered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkTagCopyWith<BookmarkTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkTagCopyWith<$Res> {
  factory $BookmarkTagCopyWith(
          BookmarkTag value, $Res Function(BookmarkTag) then) =
      _$BookmarkTagCopyWithImpl<$Res, BookmarkTag>;
  @useResult
  $Res call({String name, bool isRegistered});
}

/// @nodoc
class _$BookmarkTagCopyWithImpl<$Res, $Val extends BookmarkTag>
    implements $BookmarkTagCopyWith<$Res> {
  _$BookmarkTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isRegistered = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookmarkTagCopyWith<$Res>
    implements $BookmarkTagCopyWith<$Res> {
  factory _$$_BookmarkTagCopyWith(
          _$_BookmarkTag value, $Res Function(_$_BookmarkTag) then) =
      __$$_BookmarkTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isRegistered});
}

/// @nodoc
class __$$_BookmarkTagCopyWithImpl<$Res>
    extends _$BookmarkTagCopyWithImpl<$Res, _$_BookmarkTag>
    implements _$$_BookmarkTagCopyWith<$Res> {
  __$$_BookmarkTagCopyWithImpl(
      _$_BookmarkTag _value, $Res Function(_$_BookmarkTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isRegistered = null,
  }) {
    return _then(_$_BookmarkTag(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isRegistered: null == isRegistered
          ? _value.isRegistered
          : isRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkTag implements _BookmarkTag {
  _$_BookmarkTag({required this.name, required this.isRegistered});

  factory _$_BookmarkTag.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkTagFromJson(json);

  @override
  final String name;
  @override
  final bool isRegistered;

  @override
  String toString() {
    return 'BookmarkTag(name: $name, isRegistered: $isRegistered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkTag &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isRegistered, isRegistered) ||
                other.isRegistered == isRegistered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, isRegistered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkTagCopyWith<_$_BookmarkTag> get copyWith =>
      __$$_BookmarkTagCopyWithImpl<_$_BookmarkTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkTagToJson(
      this,
    );
  }
}

abstract class _BookmarkTag implements BookmarkTag {
  factory _BookmarkTag(
      {required final String name,
      required final bool isRegistered}) = _$_BookmarkTag;

  factory _BookmarkTag.fromJson(Map<String, dynamic> json) =
      _$_BookmarkTag.fromJson;

  @override
  String get name;
  @override
  bool get isRegistered;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkTagCopyWith<_$_BookmarkTag> get copyWith =>
      throw _privateConstructorUsedError;
}

BookmarkDetail _$BookmarkDetailFromJson(Map<String, dynamic> json) {
  return _BookmarkDetail.fromJson(json);
}

/// @nodoc
mixin _$BookmarkDetail {
  bool get isBookmarked => throw _privateConstructorUsedError;
  List<BookmarkTag> get tags => throw _privateConstructorUsedError;
  Restrict get restrict => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookmarkDetailCopyWith<BookmarkDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkDetailCopyWith<$Res> {
  factory $BookmarkDetailCopyWith(
          BookmarkDetail value, $Res Function(BookmarkDetail) then) =
      _$BookmarkDetailCopyWithImpl<$Res, BookmarkDetail>;
  @useResult
  $Res call({bool isBookmarked, List<BookmarkTag> tags, Restrict restrict});
}

/// @nodoc
class _$BookmarkDetailCopyWithImpl<$Res, $Val extends BookmarkDetail>
    implements $BookmarkDetailCopyWith<$Res> {
  _$BookmarkDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
    Object? tags = null,
    Object? restrict = null,
  }) {
    return _then(_value.copyWith(
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<BookmarkTag>,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as Restrict,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookmarkDetailCopyWith<$Res>
    implements $BookmarkDetailCopyWith<$Res> {
  factory _$$_BookmarkDetailCopyWith(
          _$_BookmarkDetail value, $Res Function(_$_BookmarkDetail) then) =
      __$$_BookmarkDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBookmarked, List<BookmarkTag> tags, Restrict restrict});
}

/// @nodoc
class __$$_BookmarkDetailCopyWithImpl<$Res>
    extends _$BookmarkDetailCopyWithImpl<$Res, _$_BookmarkDetail>
    implements _$$_BookmarkDetailCopyWith<$Res> {
  __$$_BookmarkDetailCopyWithImpl(
      _$_BookmarkDetail _value, $Res Function(_$_BookmarkDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
    Object? tags = null,
    Object? restrict = null,
  }) {
    return _then(_$_BookmarkDetail(
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<BookmarkTag>,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as Restrict,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookmarkDetail extends _BookmarkDetail {
  _$_BookmarkDetail(
      {required this.isBookmarked,
      required final List<BookmarkTag> tags,
      required this.restrict})
      : _tags = tags,
        super._();

  factory _$_BookmarkDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkDetailFromJson(json);

  @override
  final bool isBookmarked;
  final List<BookmarkTag> _tags;
  @override
  List<BookmarkTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final Restrict restrict;

  @override
  String toString() {
    return 'BookmarkDetail(isBookmarked: $isBookmarked, tags: $tags, restrict: $restrict)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkDetail &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.restrict, restrict) ||
                other.restrict == restrict));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isBookmarked,
      const DeepCollectionEquality().hash(_tags), restrict);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookmarkDetailCopyWith<_$_BookmarkDetail> get copyWith =>
      __$$_BookmarkDetailCopyWithImpl<_$_BookmarkDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkDetailToJson(
      this,
    );
  }
}

abstract class _BookmarkDetail extends BookmarkDetail {
  factory _BookmarkDetail(
      {required final bool isBookmarked,
      required final List<BookmarkTag> tags,
      required final Restrict restrict}) = _$_BookmarkDetail;
  _BookmarkDetail._() : super._();

  factory _BookmarkDetail.fromJson(Map<String, dynamic> json) =
      _$_BookmarkDetail.fromJson;

  @override
  bool get isBookmarked;
  @override
  List<BookmarkTag> get tags;
  @override
  Restrict get restrict;
  @override
  @JsonKey(ignore: true)
  _$$_BookmarkDetailCopyWith<_$_BookmarkDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
