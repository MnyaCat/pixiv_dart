// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'novel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Novel _$NovelFromJson(Map<String, dynamic> json) {
  return _Novel.fromJson(json);
}

/// @nodoc
mixin _$Novel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  int get restrict => throw _privateConstructorUsedError;
  int get xRestrict => throw _privateConstructorUsedError;
  bool get isOriginal => throw _privateConstructorUsedError;
  ImageUrls get imageUrls => throw _privateConstructorUsedError;
  @LocalDateTimeConverter()
  DateTime get createDate => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get textLength => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @NovelSeriesConverter()
  Series? get series => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  int get totalBookmarks => throw _privateConstructorUsedError;
  int get totalView => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  int get totalComments => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isMypixivOnly => throw _privateConstructorUsedError;
  bool get isXRestricted => throw _privateConstructorUsedError;
  @JsonKey(name: 'novel_ai_type')
  @AITypeConverter()
  AIType get novelAIType => throw _privateConstructorUsedError;
  int? get commentAccessControl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NovelCopyWith<Novel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NovelCopyWith<$Res> {
  factory $NovelCopyWith(Novel value, $Res Function(Novel) then) =
      _$NovelCopyWithImpl<$Res, Novel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String caption,
      int restrict,
      int xRestrict,
      bool isOriginal,
      ImageUrls imageUrls,
      @LocalDateTimeConverter() DateTime createDate,
      List<Tag> tags,
      int pageCount,
      int textLength,
      User user,
      @NovelSeriesConverter() Series? series,
      bool isBookmarked,
      int totalBookmarks,
      int totalView,
      bool visible,
      int totalComments,
      bool isMuted,
      bool isMypixivOnly,
      bool isXRestricted,
      @JsonKey(name: 'novel_ai_type') @AITypeConverter() AIType novelAIType,
      int? commentAccessControl});

  $ImageUrlsCopyWith<$Res> get imageUrls;
  $UserCopyWith<$Res> get user;
  $SeriesCopyWith<$Res>? get series;
}

/// @nodoc
class _$NovelCopyWithImpl<$Res, $Val extends Novel>
    implements $NovelCopyWith<$Res> {
  _$NovelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? caption = null,
    Object? restrict = null,
    Object? xRestrict = null,
    Object? isOriginal = null,
    Object? imageUrls = null,
    Object? createDate = null,
    Object? tags = null,
    Object? pageCount = null,
    Object? textLength = null,
    Object? user = null,
    Object? series = freezed,
    Object? isBookmarked = null,
    Object? totalBookmarks = null,
    Object? totalView = null,
    Object? visible = null,
    Object? totalComments = null,
    Object? isMuted = null,
    Object? isMypixivOnly = null,
    Object? isXRestricted = null,
    Object? novelAIType = null,
    Object? commentAccessControl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as int,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      textLength: null == textLength
          ? _value.textLength
          : textLength // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBookmarks: null == totalBookmarks
          ? _value.totalBookmarks
          : totalBookmarks // ignore: cast_nullable_to_non_nullable
              as int,
      totalView: null == totalView
          ? _value.totalView
          : totalView // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isMypixivOnly: null == isMypixivOnly
          ? _value.isMypixivOnly
          : isMypixivOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isXRestricted: null == isXRestricted
          ? _value.isXRestricted
          : isXRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      novelAIType: null == novelAIType
          ? _value.novelAIType
          : novelAIType // ignore: cast_nullable_to_non_nullable
              as AIType,
      commentAccessControl: freezed == commentAccessControl
          ? _value.commentAccessControl
          : commentAccessControl // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageUrlsCopyWith<$Res> get imageUrls {
    return $ImageUrlsCopyWith<$Res>(_value.imageUrls, (value) {
      return _then(_value.copyWith(imageUrls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SeriesCopyWith<$Res>? get series {
    if (_value.series == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.series!, (value) {
      return _then(_value.copyWith(series: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NovelCopyWith<$Res> implements $NovelCopyWith<$Res> {
  factory _$$_NovelCopyWith(_$_Novel value, $Res Function(_$_Novel) then) =
      __$$_NovelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String caption,
      int restrict,
      int xRestrict,
      bool isOriginal,
      ImageUrls imageUrls,
      @LocalDateTimeConverter() DateTime createDate,
      List<Tag> tags,
      int pageCount,
      int textLength,
      User user,
      @NovelSeriesConverter() Series? series,
      bool isBookmarked,
      int totalBookmarks,
      int totalView,
      bool visible,
      int totalComments,
      bool isMuted,
      bool isMypixivOnly,
      bool isXRestricted,
      @JsonKey(name: 'novel_ai_type') @AITypeConverter() AIType novelAIType,
      int? commentAccessControl});

  @override
  $ImageUrlsCopyWith<$Res> get imageUrls;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $SeriesCopyWith<$Res>? get series;
}

/// @nodoc
class __$$_NovelCopyWithImpl<$Res> extends _$NovelCopyWithImpl<$Res, _$_Novel>
    implements _$$_NovelCopyWith<$Res> {
  __$$_NovelCopyWithImpl(_$_Novel _value, $Res Function(_$_Novel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? caption = null,
    Object? restrict = null,
    Object? xRestrict = null,
    Object? isOriginal = null,
    Object? imageUrls = null,
    Object? createDate = null,
    Object? tags = null,
    Object? pageCount = null,
    Object? textLength = null,
    Object? user = null,
    Object? series = freezed,
    Object? isBookmarked = null,
    Object? totalBookmarks = null,
    Object? totalView = null,
    Object? visible = null,
    Object? totalComments = null,
    Object? isMuted = null,
    Object? isMypixivOnly = null,
    Object? isXRestricted = null,
    Object? novelAIType = null,
    Object? commentAccessControl = freezed,
  }) {
    return _then(_$_Novel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as int,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: null == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      textLength: null == textLength
          ? _value.textLength
          : textLength // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalBookmarks: null == totalBookmarks
          ? _value.totalBookmarks
          : totalBookmarks // ignore: cast_nullable_to_non_nullable
              as int,
      totalView: null == totalView
          ? _value.totalView
          : totalView // ignore: cast_nullable_to_non_nullable
              as int,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      totalComments: null == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isMypixivOnly: null == isMypixivOnly
          ? _value.isMypixivOnly
          : isMypixivOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      isXRestricted: null == isXRestricted
          ? _value.isXRestricted
          : isXRestricted // ignore: cast_nullable_to_non_nullable
              as bool,
      novelAIType: null == novelAIType
          ? _value.novelAIType
          : novelAIType // ignore: cast_nullable_to_non_nullable
              as AIType,
      commentAccessControl: freezed == commentAccessControl
          ? _value.commentAccessControl
          : commentAccessControl // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Novel implements _Novel {
  _$_Novel(
      {required this.id,
      required this.title,
      required this.caption,
      required this.restrict,
      required this.xRestrict,
      required this.isOriginal,
      required this.imageUrls,
      @LocalDateTimeConverter() required this.createDate,
      required final List<Tag> tags,
      required this.pageCount,
      required this.textLength,
      required this.user,
      @NovelSeriesConverter() this.series,
      required this.isBookmarked,
      required this.totalBookmarks,
      required this.totalView,
      required this.visible,
      required this.totalComments,
      required this.isMuted,
      required this.isMypixivOnly,
      required this.isXRestricted,
      @JsonKey(name: 'novel_ai_type')
      @AITypeConverter()
      required this.novelAIType,
      this.commentAccessControl})
      : _tags = tags;

  factory _$_Novel.fromJson(Map<String, dynamic> json) =>
      _$$_NovelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String caption;
  @override
  final int restrict;
  @override
  final int xRestrict;
  @override
  final bool isOriginal;
  @override
  final ImageUrls imageUrls;
  @override
  @LocalDateTimeConverter()
  final DateTime createDate;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int pageCount;
  @override
  final int textLength;
  @override
  final User user;
  @override
  @NovelSeriesConverter()
  final Series? series;
  @override
  final bool isBookmarked;
  @override
  final int totalBookmarks;
  @override
  final int totalView;
  @override
  final bool visible;
  @override
  final int totalComments;
  @override
  final bool isMuted;
  @override
  final bool isMypixivOnly;
  @override
  final bool isXRestricted;
  @override
  @JsonKey(name: 'novel_ai_type')
  @AITypeConverter()
  final AIType novelAIType;
  @override
  final int? commentAccessControl;

  @override
  String toString() {
    return 'Novel(id: $id, title: $title, caption: $caption, restrict: $restrict, xRestrict: $xRestrict, isOriginal: $isOriginal, imageUrls: $imageUrls, createDate: $createDate, tags: $tags, pageCount: $pageCount, textLength: $textLength, user: $user, series: $series, isBookmarked: $isBookmarked, totalBookmarks: $totalBookmarks, totalView: $totalView, visible: $visible, totalComments: $totalComments, isMuted: $isMuted, isMypixivOnly: $isMypixivOnly, isXRestricted: $isXRestricted, novelAIType: $novelAIType, commentAccessControl: $commentAccessControl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Novel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.restrict, restrict) ||
                other.restrict == restrict) &&
            (identical(other.xRestrict, xRestrict) ||
                other.xRestrict == xRestrict) &&
            (identical(other.isOriginal, isOriginal) ||
                other.isOriginal == isOriginal) &&
            (identical(other.imageUrls, imageUrls) ||
                other.imageUrls == imageUrls) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.textLength, textLength) ||
                other.textLength == textLength) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.totalBookmarks, totalBookmarks) ||
                other.totalBookmarks == totalBookmarks) &&
            (identical(other.totalView, totalView) ||
                other.totalView == totalView) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isMypixivOnly, isMypixivOnly) ||
                other.isMypixivOnly == isMypixivOnly) &&
            (identical(other.isXRestricted, isXRestricted) ||
                other.isXRestricted == isXRestricted) &&
            (identical(other.novelAIType, novelAIType) ||
                other.novelAIType == novelAIType) &&
            (identical(other.commentAccessControl, commentAccessControl) ||
                other.commentAccessControl == commentAccessControl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        caption,
        restrict,
        xRestrict,
        isOriginal,
        imageUrls,
        createDate,
        const DeepCollectionEquality().hash(_tags),
        pageCount,
        textLength,
        user,
        series,
        isBookmarked,
        totalBookmarks,
        totalView,
        visible,
        totalComments,
        isMuted,
        isMypixivOnly,
        isXRestricted,
        novelAIType,
        commentAccessControl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NovelCopyWith<_$_Novel> get copyWith =>
      __$$_NovelCopyWithImpl<_$_Novel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NovelToJson(
      this,
    );
  }
}

abstract class _Novel implements Novel {
  factory _Novel(
      {required final int id,
      required final String title,
      required final String caption,
      required final int restrict,
      required final int xRestrict,
      required final bool isOriginal,
      required final ImageUrls imageUrls,
      @LocalDateTimeConverter() required final DateTime createDate,
      required final List<Tag> tags,
      required final int pageCount,
      required final int textLength,
      required final User user,
      @NovelSeriesConverter() final Series? series,
      required final bool isBookmarked,
      required final int totalBookmarks,
      required final int totalView,
      required final bool visible,
      required final int totalComments,
      required final bool isMuted,
      required final bool isMypixivOnly,
      required final bool isXRestricted,
      @JsonKey(name: 'novel_ai_type')
      @AITypeConverter()
      required final AIType novelAIType,
      final int? commentAccessControl}) = _$_Novel;

  factory _Novel.fromJson(Map<String, dynamic> json) = _$_Novel.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get caption;
  @override
  int get restrict;
  @override
  int get xRestrict;
  @override
  bool get isOriginal;
  @override
  ImageUrls get imageUrls;
  @override
  @LocalDateTimeConverter()
  DateTime get createDate;
  @override
  List<Tag> get tags;
  @override
  int get pageCount;
  @override
  int get textLength;
  @override
  User get user;
  @override
  @NovelSeriesConverter()
  Series? get series;
  @override
  bool get isBookmarked;
  @override
  int get totalBookmarks;
  @override
  int get totalView;
  @override
  bool get visible;
  @override
  int get totalComments;
  @override
  bool get isMuted;
  @override
  bool get isMypixivOnly;
  @override
  bool get isXRestricted;
  @override
  @JsonKey(name: 'novel_ai_type')
  @AITypeConverter()
  AIType get novelAIType;
  @override
  int? get commentAccessControl;
  @override
  @JsonKey(ignore: true)
  _$$_NovelCopyWith<_$_Novel> get copyWith =>
      throw _privateConstructorUsedError;
}
