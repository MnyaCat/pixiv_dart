// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserPreview _$UserPreviewFromJson(Map<String, dynamic> json) {
  return _UserPreview.fromJson(json);
}

/// @nodoc
mixin _$UserPreview {
  UserInfo get user => throw _privateConstructorUsedError;
  List<Illust> get illusts => throw _privateConstructorUsedError;
  List<Novel> get novels => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserPreviewCopyWith<UserPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPreviewCopyWith<$Res> {
  factory $UserPreviewCopyWith(
          UserPreview value, $Res Function(UserPreview) then) =
      _$UserPreviewCopyWithImpl<$Res, UserPreview>;
  @useResult
  $Res call(
      {UserInfo user, List<Illust> illusts, List<Novel> novels, bool isMuted});

  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class _$UserPreviewCopyWithImpl<$Res, $Val extends UserPreview>
    implements $UserPreviewCopyWith<$Res> {
  _$UserPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? illusts = null,
    Object? novels = null,
    Object? isMuted = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      illusts: null == illusts
          ? _value.illusts
          : illusts // ignore: cast_nullable_to_non_nullable
              as List<Illust>,
      novels: null == novels
          ? _value.novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoCopyWith<$Res> get user {
    return $UserInfoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserPreviewCopyWith<$Res>
    implements $UserPreviewCopyWith<$Res> {
  factory _$$_UserPreviewCopyWith(
          _$_UserPreview value, $Res Function(_$_UserPreview) then) =
      __$$_UserPreviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserInfo user, List<Illust> illusts, List<Novel> novels, bool isMuted});

  @override
  $UserInfoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserPreviewCopyWithImpl<$Res>
    extends _$UserPreviewCopyWithImpl<$Res, _$_UserPreview>
    implements _$$_UserPreviewCopyWith<$Res> {
  __$$_UserPreviewCopyWithImpl(
      _$_UserPreview _value, $Res Function(_$_UserPreview) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? illusts = null,
    Object? novels = null,
    Object? isMuted = null,
  }) {
    return _then(_$_UserPreview(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserInfo,
      illusts: null == illusts
          ? _value._illusts
          : illusts // ignore: cast_nullable_to_non_nullable
              as List<Illust>,
      novels: null == novels
          ? _value._novels
          : novels // ignore: cast_nullable_to_non_nullable
              as List<Novel>,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserPreview implements _UserPreview {
  _$_UserPreview(
      {required this.user,
      required final List<Illust> illusts,
      required final List<Novel> novels,
      required this.isMuted})
      : _illusts = illusts,
        _novels = novels;

  factory _$_UserPreview.fromJson(Map<String, dynamic> json) =>
      _$$_UserPreviewFromJson(json);

  @override
  final UserInfo user;
  final List<Illust> _illusts;
  @override
  List<Illust> get illusts {
    if (_illusts is EqualUnmodifiableListView) return _illusts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_illusts);
  }

  final List<Novel> _novels;
  @override
  List<Novel> get novels {
    if (_novels is EqualUnmodifiableListView) return _novels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_novels);
  }

  @override
  final bool isMuted;

  @override
  String toString() {
    return 'UserPreview(user: $user, illusts: $illusts, novels: $novels, isMuted: $isMuted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserPreview &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._illusts, _illusts) &&
            const DeepCollectionEquality().equals(other._novels, _novels) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_illusts),
      const DeepCollectionEquality().hash(_novels),
      isMuted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPreviewCopyWith<_$_UserPreview> get copyWith =>
      __$$_UserPreviewCopyWithImpl<_$_UserPreview>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserPreviewToJson(
      this,
    );
  }
}

abstract class _UserPreview implements UserPreview {
  factory _UserPreview(
      {required final UserInfo user,
      required final List<Illust> illusts,
      required final List<Novel> novels,
      required final bool isMuted}) = _$_UserPreview;

  factory _UserPreview.fromJson(Map<String, dynamic> json) =
      _$_UserPreview.fromJson;

  @override
  UserInfo get user;
  @override
  List<Illust> get illusts;
  @override
  List<Novel> get novels;
  @override
  bool get isMuted;
  @override
  @JsonKey(ignore: true)
  _$$_UserPreviewCopyWith<_$_UserPreview> get copyWith =>
      throw _privateConstructorUsedError;
}
