// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'illust.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IllustImageUrls _$IllustImageUrlsFromJson(Map<String, dynamic> json) {
  return _IllustImageUrls.fromJson(json);
}

/// @nodoc
mixin _$IllustImageUrls {
  String get squareMedium => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get large => throw _privateConstructorUsedError;
  String get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllustImageUrlsCopyWith<IllustImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllustImageUrlsCopyWith<$Res> {
  factory $IllustImageUrlsCopyWith(
          IllustImageUrls value, $Res Function(IllustImageUrls) then) =
      _$IllustImageUrlsCopyWithImpl<$Res, IllustImageUrls>;
  @useResult
  $Res call(
      {String squareMedium, String medium, String large, String original});
}

/// @nodoc
class _$IllustImageUrlsCopyWithImpl<$Res, $Val extends IllustImageUrls>
    implements $IllustImageUrlsCopyWith<$Res> {
  _$IllustImageUrlsCopyWithImpl(this._value, this._then);

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
    Object? original = null,
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
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IllustImageUrlsCopyWith<$Res>
    implements $IllustImageUrlsCopyWith<$Res> {
  factory _$$_IllustImageUrlsCopyWith(
          _$_IllustImageUrls value, $Res Function(_$_IllustImageUrls) then) =
      __$$_IllustImageUrlsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String squareMedium, String medium, String large, String original});
}

/// @nodoc
class __$$_IllustImageUrlsCopyWithImpl<$Res>
    extends _$IllustImageUrlsCopyWithImpl<$Res, _$_IllustImageUrls>
    implements _$$_IllustImageUrlsCopyWith<$Res> {
  __$$_IllustImageUrlsCopyWithImpl(
      _$_IllustImageUrls _value, $Res Function(_$_IllustImageUrls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? squareMedium = null,
    Object? medium = null,
    Object? large = null,
    Object? original = null,
  }) {
    return _then(_$_IllustImageUrls(
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
      original: null == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IllustImageUrls implements _IllustImageUrls {
  _$_IllustImageUrls(
      {required this.squareMedium,
      required this.medium,
      required this.large,
      required this.original});

  factory _$_IllustImageUrls.fromJson(Map<String, dynamic> json) =>
      _$$_IllustImageUrlsFromJson(json);

  @override
  final String squareMedium;
  @override
  final String medium;
  @override
  final String large;
  @override
  final String original;

  @override
  String toString() {
    return 'IllustImageUrls(squareMedium: $squareMedium, medium: $medium, large: $large, original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IllustImageUrls &&
            (identical(other.squareMedium, squareMedium) ||
                other.squareMedium == squareMedium) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.original, original) ||
                other.original == original));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, squareMedium, medium, large, original);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IllustImageUrlsCopyWith<_$_IllustImageUrls> get copyWith =>
      __$$_IllustImageUrlsCopyWithImpl<_$_IllustImageUrls>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IllustImageUrlsToJson(
      this,
    );
  }
}

abstract class _IllustImageUrls implements IllustImageUrls {
  factory _IllustImageUrls(
      {required final String squareMedium,
      required final String medium,
      required final String large,
      required final String original}) = _$_IllustImageUrls;

  factory _IllustImageUrls.fromJson(Map<String, dynamic> json) =
      _$_IllustImageUrls.fromJson;

  @override
  String get squareMedium;
  @override
  String get medium;
  @override
  String get large;
  @override
  String get original;
  @override
  @JsonKey(ignore: true)
  _$$_IllustImageUrlsCopyWith<_$_IllustImageUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaSinglePage _$MetaSinglePageFromJson(Map<String, dynamic> json) {
  return _MetaSinglePage.fromJson(json);
}

/// @nodoc
mixin _$MetaSinglePage {
  String get originalImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaSinglePageCopyWith<MetaSinglePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaSinglePageCopyWith<$Res> {
  factory $MetaSinglePageCopyWith(
          MetaSinglePage value, $Res Function(MetaSinglePage) then) =
      _$MetaSinglePageCopyWithImpl<$Res, MetaSinglePage>;
  @useResult
  $Res call({String originalImageUrl});
}

/// @nodoc
class _$MetaSinglePageCopyWithImpl<$Res, $Val extends MetaSinglePage>
    implements $MetaSinglePageCopyWith<$Res> {
  _$MetaSinglePageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalImageUrl = null,
  }) {
    return _then(_value.copyWith(
      originalImageUrl: null == originalImageUrl
          ? _value.originalImageUrl
          : originalImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaSinglePageCopyWith<$Res>
    implements $MetaSinglePageCopyWith<$Res> {
  factory _$$_MetaSinglePageCopyWith(
          _$_MetaSinglePage value, $Res Function(_$_MetaSinglePage) then) =
      __$$_MetaSinglePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String originalImageUrl});
}

/// @nodoc
class __$$_MetaSinglePageCopyWithImpl<$Res>
    extends _$MetaSinglePageCopyWithImpl<$Res, _$_MetaSinglePage>
    implements _$$_MetaSinglePageCopyWith<$Res> {
  __$$_MetaSinglePageCopyWithImpl(
      _$_MetaSinglePage _value, $Res Function(_$_MetaSinglePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? originalImageUrl = null,
  }) {
    return _then(_$_MetaSinglePage(
      originalImageUrl: null == originalImageUrl
          ? _value.originalImageUrl
          : originalImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaSinglePage implements _MetaSinglePage {
  _$_MetaSinglePage({required this.originalImageUrl});

  factory _$_MetaSinglePage.fromJson(Map<String, dynamic> json) =>
      _$$_MetaSinglePageFromJson(json);

  @override
  final String originalImageUrl;

  @override
  String toString() {
    return 'MetaSinglePage(originalImageUrl: $originalImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaSinglePage &&
            (identical(other.originalImageUrl, originalImageUrl) ||
                other.originalImageUrl == originalImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, originalImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaSinglePageCopyWith<_$_MetaSinglePage> get copyWith =>
      __$$_MetaSinglePageCopyWithImpl<_$_MetaSinglePage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaSinglePageToJson(
      this,
    );
  }
}

abstract class _MetaSinglePage implements MetaSinglePage {
  factory _MetaSinglePage({required final String originalImageUrl}) =
      _$_MetaSinglePage;

  factory _MetaSinglePage.fromJson(Map<String, dynamic> json) =
      _$_MetaSinglePage.fromJson;

  @override
  String get originalImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MetaSinglePageCopyWith<_$_MetaSinglePage> get copyWith =>
      throw _privateConstructorUsedError;
}

Illust _$IllustFromJson(Map<String, dynamic> json) {
  return _Illust.fromJson(json);
}

/// @nodoc
mixin _$Illust {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  IllustType get type => throw _privateConstructorUsedError;
  ImageUrls get imageUrls => throw _privateConstructorUsedError;
  String get caption => throw _privateConstructorUsedError;
  int get restrict => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  List<Tag> get tags => throw _privateConstructorUsedError;
  List<String> get tools => throw _privateConstructorUsedError;
  @LocalDateTimeConverter()
  DateTime get createDate => throw _privateConstructorUsedError;
  int get pageCount => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get sanityLevel => throw _privateConstructorUsedError;
  int get xRestrict => throw _privateConstructorUsedError;
  Series? get series => throw _privateConstructorUsedError;
  @MetaSinglePageConveter()
  MetaSinglePage? get metaSinglePage => throw _privateConstructorUsedError;
  @MetaPagesConverter()
  List<IllustImageUrls> get metaPages => throw _privateConstructorUsedError;
  int get totalView => throw _privateConstructorUsedError;
  int get totalBookmarks => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  bool get visible => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  int? get totalComments => throw _privateConstructorUsedError;
  @JsonKey(name: 'illust_ai_type')
  @AITypeConverter()
  AIType get illustAIType => throw _privateConstructorUsedError;
  int get illustBookStyle => throw _privateConstructorUsedError;
  int? get commentAccessControl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IllustCopyWith<Illust> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IllustCopyWith<$Res> {
  factory $IllustCopyWith(Illust value, $Res Function(Illust) then) =
      _$IllustCopyWithImpl<$Res, Illust>;
  @useResult
  $Res call(
      {int id,
      String title,
      IllustType type,
      ImageUrls imageUrls,
      String caption,
      int restrict,
      User user,
      List<Tag> tags,
      List<String> tools,
      @LocalDateTimeConverter() DateTime createDate,
      int pageCount,
      int width,
      int height,
      int sanityLevel,
      int xRestrict,
      Series? series,
      @MetaSinglePageConveter() MetaSinglePage? metaSinglePage,
      @MetaPagesConverter() List<IllustImageUrls> metaPages,
      int totalView,
      int totalBookmarks,
      bool isBookmarked,
      bool visible,
      bool isMuted,
      int? totalComments,
      @JsonKey(name: 'illust_ai_type') @AITypeConverter() AIType illustAIType,
      int illustBookStyle,
      int? commentAccessControl});

  $ImageUrlsCopyWith<$Res> get imageUrls;
  $UserCopyWith<$Res> get user;
  $SeriesCopyWith<$Res>? get series;
  $MetaSinglePageCopyWith<$Res>? get metaSinglePage;
}

/// @nodoc
class _$IllustCopyWithImpl<$Res, $Val extends Illust>
    implements $IllustCopyWith<$Res> {
  _$IllustCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? imageUrls = null,
    Object? caption = null,
    Object? restrict = null,
    Object? user = null,
    Object? tags = null,
    Object? tools = null,
    Object? createDate = null,
    Object? pageCount = null,
    Object? width = null,
    Object? height = null,
    Object? sanityLevel = null,
    Object? xRestrict = null,
    Object? series = freezed,
    Object? metaSinglePage = freezed,
    Object? metaPages = null,
    Object? totalView = null,
    Object? totalBookmarks = null,
    Object? isBookmarked = null,
    Object? visible = null,
    Object? isMuted = null,
    Object? totalComments = freezed,
    Object? illustAIType = null,
    Object? illustBookStyle = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IllustType,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      tools: null == tools
          ? _value.tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      sanityLevel: null == sanityLevel
          ? _value.sanityLevel
          : sanityLevel // ignore: cast_nullable_to_non_nullable
              as int,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      metaSinglePage: freezed == metaSinglePage
          ? _value.metaSinglePage
          : metaSinglePage // ignore: cast_nullable_to_non_nullable
              as MetaSinglePage?,
      metaPages: null == metaPages
          ? _value.metaPages
          : metaPages // ignore: cast_nullable_to_non_nullable
              as List<IllustImageUrls>,
      totalView: null == totalView
          ? _value.totalView
          : totalView // ignore: cast_nullable_to_non_nullable
              as int,
      totalBookmarks: null == totalBookmarks
          ? _value.totalBookmarks
          : totalBookmarks // ignore: cast_nullable_to_non_nullable
              as int,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      illustAIType: null == illustAIType
          ? _value.illustAIType
          : illustAIType // ignore: cast_nullable_to_non_nullable
              as AIType,
      illustBookStyle: null == illustBookStyle
          ? _value.illustBookStyle
          : illustBookStyle // ignore: cast_nullable_to_non_nullable
              as int,
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

  @override
  @pragma('vm:prefer-inline')
  $MetaSinglePageCopyWith<$Res>? get metaSinglePage {
    if (_value.metaSinglePage == null) {
      return null;
    }

    return $MetaSinglePageCopyWith<$Res>(_value.metaSinglePage!, (value) {
      return _then(_value.copyWith(metaSinglePage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IllustCopyWith<$Res> implements $IllustCopyWith<$Res> {
  factory _$$_IllustCopyWith(_$_Illust value, $Res Function(_$_Illust) then) =
      __$$_IllustCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      IllustType type,
      ImageUrls imageUrls,
      String caption,
      int restrict,
      User user,
      List<Tag> tags,
      List<String> tools,
      @LocalDateTimeConverter() DateTime createDate,
      int pageCount,
      int width,
      int height,
      int sanityLevel,
      int xRestrict,
      Series? series,
      @MetaSinglePageConveter() MetaSinglePage? metaSinglePage,
      @MetaPagesConverter() List<IllustImageUrls> metaPages,
      int totalView,
      int totalBookmarks,
      bool isBookmarked,
      bool visible,
      bool isMuted,
      int? totalComments,
      @JsonKey(name: 'illust_ai_type') @AITypeConverter() AIType illustAIType,
      int illustBookStyle,
      int? commentAccessControl});

  @override
  $ImageUrlsCopyWith<$Res> get imageUrls;
  @override
  $UserCopyWith<$Res> get user;
  @override
  $SeriesCopyWith<$Res>? get series;
  @override
  $MetaSinglePageCopyWith<$Res>? get metaSinglePage;
}

/// @nodoc
class __$$_IllustCopyWithImpl<$Res>
    extends _$IllustCopyWithImpl<$Res, _$_Illust>
    implements _$$_IllustCopyWith<$Res> {
  __$$_IllustCopyWithImpl(_$_Illust _value, $Res Function(_$_Illust) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? imageUrls = null,
    Object? caption = null,
    Object? restrict = null,
    Object? user = null,
    Object? tags = null,
    Object? tools = null,
    Object? createDate = null,
    Object? pageCount = null,
    Object? width = null,
    Object? height = null,
    Object? sanityLevel = null,
    Object? xRestrict = null,
    Object? series = freezed,
    Object? metaSinglePage = freezed,
    Object? metaPages = null,
    Object? totalView = null,
    Object? totalBookmarks = null,
    Object? isBookmarked = null,
    Object? visible = null,
    Object? isMuted = null,
    Object? totalComments = freezed,
    Object? illustAIType = null,
    Object? illustBookStyle = null,
    Object? commentAccessControl = freezed,
  }) {
    return _then(_$_Illust(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as IllustType,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as ImageUrls,
      caption: null == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String,
      restrict: null == restrict
          ? _value.restrict
          : restrict // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
      tools: null == tools
          ? _value._tools
          : tools // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createDate: null == createDate
          ? _value.createDate
          : createDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      pageCount: null == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      sanityLevel: null == sanityLevel
          ? _value.sanityLevel
          : sanityLevel // ignore: cast_nullable_to_non_nullable
              as int,
      xRestrict: null == xRestrict
          ? _value.xRestrict
          : xRestrict // ignore: cast_nullable_to_non_nullable
              as int,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as Series?,
      metaSinglePage: freezed == metaSinglePage
          ? _value.metaSinglePage
          : metaSinglePage // ignore: cast_nullable_to_non_nullable
              as MetaSinglePage?,
      metaPages: null == metaPages
          ? _value._metaPages
          : metaPages // ignore: cast_nullable_to_non_nullable
              as List<IllustImageUrls>,
      totalView: null == totalView
          ? _value.totalView
          : totalView // ignore: cast_nullable_to_non_nullable
              as int,
      totalBookmarks: null == totalBookmarks
          ? _value.totalBookmarks
          : totalBookmarks // ignore: cast_nullable_to_non_nullable
              as int,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      totalComments: freezed == totalComments
          ? _value.totalComments
          : totalComments // ignore: cast_nullable_to_non_nullable
              as int?,
      illustAIType: null == illustAIType
          ? _value.illustAIType
          : illustAIType // ignore: cast_nullable_to_non_nullable
              as AIType,
      illustBookStyle: null == illustBookStyle
          ? _value.illustBookStyle
          : illustBookStyle // ignore: cast_nullable_to_non_nullable
              as int,
      commentAccessControl: freezed == commentAccessControl
          ? _value.commentAccessControl
          : commentAccessControl // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Illust implements _Illust {
  _$_Illust(
      {required this.id,
      required this.title,
      required this.type,
      required this.imageUrls,
      required this.caption,
      required this.restrict,
      required this.user,
      required final List<Tag> tags,
      required final List<String> tools,
      @LocalDateTimeConverter()
          required this.createDate,
      required this.pageCount,
      required this.width,
      required this.height,
      required this.sanityLevel,
      required this.xRestrict,
      this.series,
      @MetaSinglePageConveter()
          this.metaSinglePage,
      @MetaPagesConverter()
          required final List<IllustImageUrls> metaPages,
      required this.totalView,
      required this.totalBookmarks,
      required this.isBookmarked,
      required this.visible,
      required this.isMuted,
      this.totalComments,
      @JsonKey(name: 'illust_ai_type')
      @AITypeConverter()
          required this.illustAIType,
      required this.illustBookStyle,
      this.commentAccessControl})
      : _tags = tags,
        _tools = tools,
        _metaPages = metaPages;

  factory _$_Illust.fromJson(Map<String, dynamic> json) =>
      _$$_IllustFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final IllustType type;
  @override
  final ImageUrls imageUrls;
  @override
  final String caption;
  @override
  final int restrict;
  @override
  final User user;
  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _tools;
  @override
  List<String> get tools {
    if (_tools is EqualUnmodifiableListView) return _tools;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tools);
  }

  @override
  @LocalDateTimeConverter()
  final DateTime createDate;
  @override
  final int pageCount;
  @override
  final int width;
  @override
  final int height;
  @override
  final int sanityLevel;
  @override
  final int xRestrict;
  @override
  final Series? series;
  @override
  @MetaSinglePageConveter()
  final MetaSinglePage? metaSinglePage;
  final List<IllustImageUrls> _metaPages;
  @override
  @MetaPagesConverter()
  List<IllustImageUrls> get metaPages {
    if (_metaPages is EqualUnmodifiableListView) return _metaPages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaPages);
  }

  @override
  final int totalView;
  @override
  final int totalBookmarks;
  @override
  final bool isBookmarked;
  @override
  final bool visible;
  @override
  final bool isMuted;
  @override
  final int? totalComments;
  @override
  @JsonKey(name: 'illust_ai_type')
  @AITypeConverter()
  final AIType illustAIType;
  @override
  final int illustBookStyle;
  @override
  final int? commentAccessControl;

  @override
  String toString() {
    return 'Illust(id: $id, title: $title, type: $type, imageUrls: $imageUrls, caption: $caption, restrict: $restrict, user: $user, tags: $tags, tools: $tools, createDate: $createDate, pageCount: $pageCount, width: $width, height: $height, sanityLevel: $sanityLevel, xRestrict: $xRestrict, series: $series, metaSinglePage: $metaSinglePage, metaPages: $metaPages, totalView: $totalView, totalBookmarks: $totalBookmarks, isBookmarked: $isBookmarked, visible: $visible, isMuted: $isMuted, totalComments: $totalComments, illustAIType: $illustAIType, illustBookStyle: $illustBookStyle, commentAccessControl: $commentAccessControl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Illust &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrls, imageUrls) ||
                other.imageUrls == imageUrls) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.restrict, restrict) ||
                other.restrict == restrict) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._tools, _tools) &&
            (identical(other.createDate, createDate) ||
                other.createDate == createDate) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.sanityLevel, sanityLevel) ||
                other.sanityLevel == sanityLevel) &&
            (identical(other.xRestrict, xRestrict) ||
                other.xRestrict == xRestrict) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.metaSinglePage, metaSinglePage) ||
                other.metaSinglePage == metaSinglePage) &&
            const DeepCollectionEquality()
                .equals(other._metaPages, _metaPages) &&
            (identical(other.totalView, totalView) ||
                other.totalView == totalView) &&
            (identical(other.totalBookmarks, totalBookmarks) ||
                other.totalBookmarks == totalBookmarks) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.totalComments, totalComments) ||
                other.totalComments == totalComments) &&
            (identical(other.illustAIType, illustAIType) ||
                other.illustAIType == illustAIType) &&
            (identical(other.illustBookStyle, illustBookStyle) ||
                other.illustBookStyle == illustBookStyle) &&
            (identical(other.commentAccessControl, commentAccessControl) ||
                other.commentAccessControl == commentAccessControl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        type,
        imageUrls,
        caption,
        restrict,
        user,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_tools),
        createDate,
        pageCount,
        width,
        height,
        sanityLevel,
        xRestrict,
        series,
        metaSinglePage,
        const DeepCollectionEquality().hash(_metaPages),
        totalView,
        totalBookmarks,
        isBookmarked,
        visible,
        isMuted,
        totalComments,
        illustAIType,
        illustBookStyle,
        commentAccessControl
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IllustCopyWith<_$_Illust> get copyWith =>
      __$$_IllustCopyWithImpl<_$_Illust>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IllustToJson(
      this,
    );
  }
}

abstract class _Illust implements Illust {
  factory _Illust(
      {required final int id,
      required final String title,
      required final IllustType type,
      required final ImageUrls imageUrls,
      required final String caption,
      required final int restrict,
      required final User user,
      required final List<Tag> tags,
      required final List<String> tools,
      @LocalDateTimeConverter()
          required final DateTime createDate,
      required final int pageCount,
      required final int width,
      required final int height,
      required final int sanityLevel,
      required final int xRestrict,
      final Series? series,
      @MetaSinglePageConveter()
          final MetaSinglePage? metaSinglePage,
      @MetaPagesConverter()
          required final List<IllustImageUrls> metaPages,
      required final int totalView,
      required final int totalBookmarks,
      required final bool isBookmarked,
      required final bool visible,
      required final bool isMuted,
      final int? totalComments,
      @JsonKey(name: 'illust_ai_type')
      @AITypeConverter()
          required final AIType illustAIType,
      required final int illustBookStyle,
      final int? commentAccessControl}) = _$_Illust;

  factory _Illust.fromJson(Map<String, dynamic> json) = _$_Illust.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  IllustType get type;
  @override
  ImageUrls get imageUrls;
  @override
  String get caption;
  @override
  int get restrict;
  @override
  User get user;
  @override
  List<Tag> get tags;
  @override
  List<String> get tools;
  @override
  @LocalDateTimeConverter()
  DateTime get createDate;
  @override
  int get pageCount;
  @override
  int get width;
  @override
  int get height;
  @override
  int get sanityLevel;
  @override
  int get xRestrict;
  @override
  Series? get series;
  @override
  @MetaSinglePageConveter()
  MetaSinglePage? get metaSinglePage;
  @override
  @MetaPagesConverter()
  List<IllustImageUrls> get metaPages;
  @override
  int get totalView;
  @override
  int get totalBookmarks;
  @override
  bool get isBookmarked;
  @override
  bool get visible;
  @override
  bool get isMuted;
  @override
  int? get totalComments;
  @override
  @JsonKey(name: 'illust_ai_type')
  @AITypeConverter()
  AIType get illustAIType;
  @override
  int get illustBookStyle;
  @override
  int? get commentAccessControl;
  @override
  @JsonKey(ignore: true)
  _$$_IllustCopyWith<_$_Illust> get copyWith =>
      throw _privateConstructorUsedError;
}
