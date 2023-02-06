// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ugoira_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZipUrls _$ZipUrlsFromJson(Map<String, dynamic> json) {
  return _ZipUrls.fromJson(json);
}

/// @nodoc
mixin _$ZipUrls {
  String get medium => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZipUrlsCopyWith<ZipUrls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZipUrlsCopyWith<$Res> {
  factory $ZipUrlsCopyWith(ZipUrls value, $Res Function(ZipUrls) then) =
      _$ZipUrlsCopyWithImpl<$Res, ZipUrls>;
  @useResult
  $Res call({String medium});
}

/// @nodoc
class _$ZipUrlsCopyWithImpl<$Res, $Val extends ZipUrls>
    implements $ZipUrlsCopyWith<$Res> {
  _$ZipUrlsCopyWithImpl(this._value, this._then);

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
abstract class _$$_ZipUrlsCopyWith<$Res> implements $ZipUrlsCopyWith<$Res> {
  factory _$$_ZipUrlsCopyWith(
          _$_ZipUrls value, $Res Function(_$_ZipUrls) then) =
      __$$_ZipUrlsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medium});
}

/// @nodoc
class __$$_ZipUrlsCopyWithImpl<$Res>
    extends _$ZipUrlsCopyWithImpl<$Res, _$_ZipUrls>
    implements _$$_ZipUrlsCopyWith<$Res> {
  __$$_ZipUrlsCopyWithImpl(_$_ZipUrls _value, $Res Function(_$_ZipUrls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$_ZipUrls(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZipUrls implements _ZipUrls {
  _$_ZipUrls({required this.medium});

  factory _$_ZipUrls.fromJson(Map<String, dynamic> json) =>
      _$$_ZipUrlsFromJson(json);

  @override
  final String medium;

  @override
  String toString() {
    return 'ZipUrls(medium: $medium)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZipUrls &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZipUrlsCopyWith<_$_ZipUrls> get copyWith =>
      __$$_ZipUrlsCopyWithImpl<_$_ZipUrls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZipUrlsToJson(
      this,
    );
  }
}

abstract class _ZipUrls implements ZipUrls {
  factory _ZipUrls({required final String medium}) = _$_ZipUrls;

  factory _ZipUrls.fromJson(Map<String, dynamic> json) = _$_ZipUrls.fromJson;

  @override
  String get medium;
  @override
  @JsonKey(ignore: true)
  _$$_ZipUrlsCopyWith<_$_ZipUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

Frame _$FrameFromJson(Map<String, dynamic> json) {
  return _Frame.fromJson(json);
}

/// @nodoc
mixin _$Frame {
  String get file => throw _privateConstructorUsedError;
  int get delay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrameCopyWith<Frame> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrameCopyWith<$Res> {
  factory $FrameCopyWith(Frame value, $Res Function(Frame) then) =
      _$FrameCopyWithImpl<$Res, Frame>;
  @useResult
  $Res call({String file, int delay});
}

/// @nodoc
class _$FrameCopyWithImpl<$Res, $Val extends Frame>
    implements $FrameCopyWith<$Res> {
  _$FrameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? delay = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrameCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$$_FrameCopyWith(_$_Frame value, $Res Function(_$_Frame) then) =
      __$$_FrameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file, int delay});
}

/// @nodoc
class __$$_FrameCopyWithImpl<$Res> extends _$FrameCopyWithImpl<$Res, _$_Frame>
    implements _$$_FrameCopyWith<$Res> {
  __$$_FrameCopyWithImpl(_$_Frame _value, $Res Function(_$_Frame) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? delay = null,
  }) {
    return _then(_$_Frame(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
      delay: null == delay
          ? _value.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Frame implements _Frame {
  _$_Frame({required this.file, required this.delay});

  factory _$_Frame.fromJson(Map<String, dynamic> json) =>
      _$$_FrameFromJson(json);

  @override
  final String file;
  @override
  final int delay;

  @override
  String toString() {
    return 'Frame(file: $file, delay: $delay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Frame &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file, delay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      __$$_FrameCopyWithImpl<_$_Frame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrameToJson(
      this,
    );
  }
}

abstract class _Frame implements Frame {
  factory _Frame({required final String file, required final int delay}) =
      _$_Frame;

  factory _Frame.fromJson(Map<String, dynamic> json) = _$_Frame.fromJson;

  @override
  String get file;
  @override
  int get delay;
  @override
  @JsonKey(ignore: true)
  _$$_FrameCopyWith<_$_Frame> get copyWith =>
      throw _privateConstructorUsedError;
}

UgoiraMetadata _$UgoiraMetadataFromJson(Map<String, dynamic> json) {
  return _UgoiraMetadata.fromJson(json);
}

/// @nodoc
mixin _$UgoiraMetadata {
  ZipUrls get zipUrls => throw _privateConstructorUsedError;
  List<Frame> get frames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UgoiraMetadataCopyWith<UgoiraMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UgoiraMetadataCopyWith<$Res> {
  factory $UgoiraMetadataCopyWith(
          UgoiraMetadata value, $Res Function(UgoiraMetadata) then) =
      _$UgoiraMetadataCopyWithImpl<$Res, UgoiraMetadata>;
  @useResult
  $Res call({ZipUrls zipUrls, List<Frame> frames});

  $ZipUrlsCopyWith<$Res> get zipUrls;
}

/// @nodoc
class _$UgoiraMetadataCopyWithImpl<$Res, $Val extends UgoiraMetadata>
    implements $UgoiraMetadataCopyWith<$Res> {
  _$UgoiraMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipUrls = null,
    Object? frames = null,
  }) {
    return _then(_value.copyWith(
      zipUrls: null == zipUrls
          ? _value.zipUrls
          : zipUrls // ignore: cast_nullable_to_non_nullable
              as ZipUrls,
      frames: null == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<Frame>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZipUrlsCopyWith<$Res> get zipUrls {
    return $ZipUrlsCopyWith<$Res>(_value.zipUrls, (value) {
      return _then(_value.copyWith(zipUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UgoiraMetadataCopyWith<$Res>
    implements $UgoiraMetadataCopyWith<$Res> {
  factory _$$_UgoiraMetadataCopyWith(
          _$_UgoiraMetadata value, $Res Function(_$_UgoiraMetadata) then) =
      __$$_UgoiraMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ZipUrls zipUrls, List<Frame> frames});

  @override
  $ZipUrlsCopyWith<$Res> get zipUrls;
}

/// @nodoc
class __$$_UgoiraMetadataCopyWithImpl<$Res>
    extends _$UgoiraMetadataCopyWithImpl<$Res, _$_UgoiraMetadata>
    implements _$$_UgoiraMetadataCopyWith<$Res> {
  __$$_UgoiraMetadataCopyWithImpl(
      _$_UgoiraMetadata _value, $Res Function(_$_UgoiraMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipUrls = null,
    Object? frames = null,
  }) {
    return _then(_$_UgoiraMetadata(
      zipUrls: null == zipUrls
          ? _value.zipUrls
          : zipUrls // ignore: cast_nullable_to_non_nullable
              as ZipUrls,
      frames: null == frames
          ? _value._frames
          : frames // ignore: cast_nullable_to_non_nullable
              as List<Frame>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UgoiraMetadata implements _UgoiraMetadata {
  _$_UgoiraMetadata({required this.zipUrls, required final List<Frame> frames})
      : _frames = frames;

  factory _$_UgoiraMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_UgoiraMetadataFromJson(json);

  @override
  final ZipUrls zipUrls;
  final List<Frame> _frames;
  @override
  List<Frame> get frames {
    if (_frames is EqualUnmodifiableListView) return _frames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frames);
  }

  @override
  String toString() {
    return 'UgoiraMetadata(zipUrls: $zipUrls, frames: $frames)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UgoiraMetadata &&
            (identical(other.zipUrls, zipUrls) || other.zipUrls == zipUrls) &&
            const DeepCollectionEquality().equals(other._frames, _frames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, zipUrls, const DeepCollectionEquality().hash(_frames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UgoiraMetadataCopyWith<_$_UgoiraMetadata> get copyWith =>
      __$$_UgoiraMetadataCopyWithImpl<_$_UgoiraMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UgoiraMetadataToJson(
      this,
    );
  }
}

abstract class _UgoiraMetadata implements UgoiraMetadata {
  factory _UgoiraMetadata(
      {required final ZipUrls zipUrls,
      required final List<Frame> frames}) = _$_UgoiraMetadata;

  factory _UgoiraMetadata.fromJson(Map<String, dynamic> json) =
      _$_UgoiraMetadata.fromJson;

  @override
  ZipUrls get zipUrls;
  @override
  List<Frame> get frames;
  @override
  @JsonKey(ignore: true)
  _$$_UgoiraMetadataCopyWith<_$_UgoiraMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
