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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$ZipUrlsImplCopyWith<$Res> implements $ZipUrlsCopyWith<$Res> {
  factory _$$ZipUrlsImplCopyWith(
          _$ZipUrlsImpl value, $Res Function(_$ZipUrlsImpl) then) =
      __$$ZipUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String medium});
}

/// @nodoc
class __$$ZipUrlsImplCopyWithImpl<$Res>
    extends _$ZipUrlsCopyWithImpl<$Res, _$ZipUrlsImpl>
    implements _$$ZipUrlsImplCopyWith<$Res> {
  __$$ZipUrlsImplCopyWithImpl(
      _$ZipUrlsImpl _value, $Res Function(_$ZipUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? medium = null,
  }) {
    return _then(_$ZipUrlsImpl(
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZipUrlsImpl implements _ZipUrls {
  _$ZipUrlsImpl({required this.medium});

  factory _$ZipUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZipUrlsImplFromJson(json);

  @override
  final String medium;

  @override
  String toString() {
    return 'ZipUrls(medium: $medium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZipUrlsImpl &&
            (identical(other.medium, medium) || other.medium == medium));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, medium);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZipUrlsImplCopyWith<_$ZipUrlsImpl> get copyWith =>
      __$$ZipUrlsImplCopyWithImpl<_$ZipUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZipUrlsImplToJson(
      this,
    );
  }
}

abstract class _ZipUrls implements ZipUrls {
  factory _ZipUrls({required final String medium}) = _$ZipUrlsImpl;

  factory _ZipUrls.fromJson(Map<String, dynamic> json) = _$ZipUrlsImpl.fromJson;

  @override
  String get medium;
  @override
  @JsonKey(ignore: true)
  _$$ZipUrlsImplCopyWith<_$ZipUrlsImpl> get copyWith =>
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
abstract class _$$FrameImplCopyWith<$Res> implements $FrameCopyWith<$Res> {
  factory _$$FrameImplCopyWith(
          _$FrameImpl value, $Res Function(_$FrameImpl) then) =
      __$$FrameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file, int delay});
}

/// @nodoc
class __$$FrameImplCopyWithImpl<$Res>
    extends _$FrameCopyWithImpl<$Res, _$FrameImpl>
    implements _$$FrameImplCopyWith<$Res> {
  __$$FrameImplCopyWithImpl(
      _$FrameImpl _value, $Res Function(_$FrameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? delay = null,
  }) {
    return _then(_$FrameImpl(
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
class _$FrameImpl implements _Frame {
  _$FrameImpl({required this.file, required this.delay});

  factory _$FrameImpl.fromJson(Map<String, dynamic> json) =>
      _$$FrameImplFromJson(json);

  @override
  final String file;
  @override
  final int delay;

  @override
  String toString() {
    return 'Frame(file: $file, delay: $delay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FrameImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file, delay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FrameImplCopyWith<_$FrameImpl> get copyWith =>
      __$$FrameImplCopyWithImpl<_$FrameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FrameImplToJson(
      this,
    );
  }
}

abstract class _Frame implements Frame {
  factory _Frame({required final String file, required final int delay}) =
      _$FrameImpl;

  factory _Frame.fromJson(Map<String, dynamic> json) = _$FrameImpl.fromJson;

  @override
  String get file;
  @override
  int get delay;
  @override
  @JsonKey(ignore: true)
  _$$FrameImplCopyWith<_$FrameImpl> get copyWith =>
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
abstract class _$$UgoiraMetadataImplCopyWith<$Res>
    implements $UgoiraMetadataCopyWith<$Res> {
  factory _$$UgoiraMetadataImplCopyWith(_$UgoiraMetadataImpl value,
          $Res Function(_$UgoiraMetadataImpl) then) =
      __$$UgoiraMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ZipUrls zipUrls, List<Frame> frames});

  @override
  $ZipUrlsCopyWith<$Res> get zipUrls;
}

/// @nodoc
class __$$UgoiraMetadataImplCopyWithImpl<$Res>
    extends _$UgoiraMetadataCopyWithImpl<$Res, _$UgoiraMetadataImpl>
    implements _$$UgoiraMetadataImplCopyWith<$Res> {
  __$$UgoiraMetadataImplCopyWithImpl(
      _$UgoiraMetadataImpl _value, $Res Function(_$UgoiraMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zipUrls = null,
    Object? frames = null,
  }) {
    return _then(_$UgoiraMetadataImpl(
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
class _$UgoiraMetadataImpl implements _UgoiraMetadata {
  _$UgoiraMetadataImpl(
      {required this.zipUrls, required final List<Frame> frames})
      : _frames = frames;

  factory _$UgoiraMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UgoiraMetadataImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UgoiraMetadataImpl &&
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
  _$$UgoiraMetadataImplCopyWith<_$UgoiraMetadataImpl> get copyWith =>
      __$$UgoiraMetadataImplCopyWithImpl<_$UgoiraMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UgoiraMetadataImplToJson(
      this,
    );
  }
}

abstract class _UgoiraMetadata implements UgoiraMetadata {
  factory _UgoiraMetadata(
      {required final ZipUrls zipUrls,
      required final List<Frame> frames}) = _$UgoiraMetadataImpl;

  factory _UgoiraMetadata.fromJson(Map<String, dynamic> json) =
      _$UgoiraMetadataImpl.fromJson;

  @override
  ZipUrls get zipUrls;
  @override
  List<Frame> get frames;
  @override
  @JsonKey(ignore: true)
  _$$UgoiraMetadataImplCopyWith<_$UgoiraMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
