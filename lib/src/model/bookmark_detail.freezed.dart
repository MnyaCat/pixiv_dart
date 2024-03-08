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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$BookmarkTagImplCopyWith<$Res>
    implements $BookmarkTagCopyWith<$Res> {
  factory _$$BookmarkTagImplCopyWith(
          _$BookmarkTagImpl value, $Res Function(_$BookmarkTagImpl) then) =
      __$$BookmarkTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isRegistered});
}

/// @nodoc
class __$$BookmarkTagImplCopyWithImpl<$Res>
    extends _$BookmarkTagCopyWithImpl<$Res, _$BookmarkTagImpl>
    implements _$$BookmarkTagImplCopyWith<$Res> {
  __$$BookmarkTagImplCopyWithImpl(
      _$BookmarkTagImpl _value, $Res Function(_$BookmarkTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isRegistered = null,
  }) {
    return _then(_$BookmarkTagImpl(
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
class _$BookmarkTagImpl implements _BookmarkTag {
  _$BookmarkTagImpl({required this.name, required this.isRegistered});

  factory _$BookmarkTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkTagImplFromJson(json);

  @override
  final String name;
  @override
  final bool isRegistered;

  @override
  String toString() {
    return 'BookmarkTag(name: $name, isRegistered: $isRegistered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkTagImpl &&
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
  _$$BookmarkTagImplCopyWith<_$BookmarkTagImpl> get copyWith =>
      __$$BookmarkTagImplCopyWithImpl<_$BookmarkTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkTagImplToJson(
      this,
    );
  }
}

abstract class _BookmarkTag implements BookmarkTag {
  factory _BookmarkTag(
      {required final String name,
      required final bool isRegistered}) = _$BookmarkTagImpl;

  factory _BookmarkTag.fromJson(Map<String, dynamic> json) =
      _$BookmarkTagImpl.fromJson;

  @override
  String get name;
  @override
  bool get isRegistered;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkTagImplCopyWith<_$BookmarkTagImpl> get copyWith =>
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
abstract class _$$BookmarkDetailImplCopyWith<$Res>
    implements $BookmarkDetailCopyWith<$Res> {
  factory _$$BookmarkDetailImplCopyWith(_$BookmarkDetailImpl value,
          $Res Function(_$BookmarkDetailImpl) then) =
      __$$BookmarkDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isBookmarked, List<BookmarkTag> tags, Restrict restrict});
}

/// @nodoc
class __$$BookmarkDetailImplCopyWithImpl<$Res>
    extends _$BookmarkDetailCopyWithImpl<$Res, _$BookmarkDetailImpl>
    implements _$$BookmarkDetailImplCopyWith<$Res> {
  __$$BookmarkDetailImplCopyWithImpl(
      _$BookmarkDetailImpl _value, $Res Function(_$BookmarkDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBookmarked = null,
    Object? tags = null,
    Object? restrict = null,
  }) {
    return _then(_$BookmarkDetailImpl(
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
class _$BookmarkDetailImpl extends _BookmarkDetail {
  _$BookmarkDetailImpl(
      {required this.isBookmarked,
      required final List<BookmarkTag> tags,
      required this.restrict})
      : _tags = tags,
        super._();

  factory _$BookmarkDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookmarkDetailImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkDetailImpl &&
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
  _$$BookmarkDetailImplCopyWith<_$BookmarkDetailImpl> get copyWith =>
      __$$BookmarkDetailImplCopyWithImpl<_$BookmarkDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookmarkDetailImplToJson(
      this,
    );
  }
}

abstract class _BookmarkDetail extends BookmarkDetail {
  factory _BookmarkDetail(
      {required final bool isBookmarked,
      required final List<BookmarkTag> tags,
      required final Restrict restrict}) = _$BookmarkDetailImpl;
  _BookmarkDetail._() : super._();

  factory _BookmarkDetail.fromJson(Map<String, dynamic> json) =
      _$BookmarkDetailImpl.fromJson;

  @override
  bool get isBookmarked;
  @override
  List<BookmarkTag> get tags;
  @override
  Restrict get restrict;
  @override
  @JsonKey(ignore: true)
  _$$BookmarkDetailImplCopyWith<_$BookmarkDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
