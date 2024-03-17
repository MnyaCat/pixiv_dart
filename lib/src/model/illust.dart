import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image/image.dart';
import 'package:pixiv_dart/src/client.dart';
import 'package:pixiv_dart/src/convert.dart';
import 'package:pixiv_dart/src/exceptions.dart';

import '../constants.dart';
import 'enums.dart';
import 'image_urls.dart';
import 'json_converters.dart';
import 'series.dart';
import 'tag.dart';
import 'user.dart';

part 'illust.freezed.dart';
part 'illust.g.dart';

@freezed
class IllustImageUrls with _$IllustImageUrls {
  factory IllustImageUrls({
    required String squareMedium,
    required String medium,
    required String large,
    required String original,
  }) = _IllustImageUrls;

  factory IllustImageUrls.fromJson(JsonMap json) =>
      _$IllustImageUrlsFromJson(json);
}

@freezed
class MetaSinglePage with _$MetaSinglePage {
  factory MetaSinglePage({
    required String originalImageUrl,
  }) = _MetaSinglePage;

  factory MetaSinglePage.fromJson(JsonMap json) =>
      _$MetaSinglePageFromJson(json);
}

// ignore: strict_raw_type
class MetaSinglePageConveter implements JsonConverter<MetaSinglePage?, Map?> {
  const MetaSinglePageConveter();
  @override
  // ignore: strict_raw_type
  MetaSinglePage? fromJson(Map? json) {
    if (json == null || json.isEmpty) {
      return null;
    } else {
      return MetaSinglePage.fromJson(json as JsonMap);
    }
  }

  @override
  // ignore: strict_raw_type
  Map? toJson(MetaSinglePage? object) {
    if (object == null) {
      return null;
    } else {
      return object.toJson();
    }
  }
}

// ignore: strict_raw_type
class MetaPagesConverter implements JsonConverter<List<IllustImageUrls>, List> {
  const MetaPagesConverter();

  @override
  // ignore: strict_raw_type
  List<IllustImageUrls> fromJson(List json) {
    final metaPages = json.cast<JsonMap>();
    return metaPages
        .map(
          (JsonMap metaPage) =>
              IllustImageUrls.fromJson(metaPage['image_urls'] as JsonMap),
        )
        .toList();
  }

  @override
  // ignore: strict_raw_type
  List toJson(List<IllustImageUrls> object) {
    return object
        .map(
          (IllustImageUrls illustImageUrls) =>
              {'image_urls': illustImageUrls.toJson()},
        )
        .toList();
  }
}

@freezed
class Illust with _$Illust {
  factory Illust({
    required int id,
    required String title,
    required IllustType type,
    required ImageUrls imageUrls,
    required String caption,
    required int restrict,
    required User user,
    required List<Tag> tags,
    required List<String> tools,
    @LocalDateTimeConverter() required DateTime createDate,
    required int pageCount,
    required int width,
    required int height,
    required int sanityLevel,
    required int xRestrict,
    Series? series,
    @MetaSinglePageConveter() MetaSinglePage? metaSinglePage,
    @MetaPagesConverter() required List<IllustImageUrls> metaPages,
    required int totalView,
    required int totalBookmarks,
    required bool isBookmarked,
    required bool visible,
    required bool isMuted,
    int? totalComments,
    @JsonKey(name: 'illust_ai_type')
    @AITypeConverter()
    required AIType illustAIType,
    required int illustBookStyle,
    int? commentAccessControl,
  }) = _Illust;
  const Illust._();

  factory Illust.fromJson(JsonMap json) => _$IllustFromJson(json);

  Future<List<Uint8List>> downloadIllusts(
    ApiClient apiClient, {
    IllustSize downloadSize = IllustSize.large,
  }) async {
    final illusts = <Uint8List>[];
    for (final metaPage in metaPages) {
      final String url;
      switch (downloadSize) {
        case IllustSize.squareMedium:
          url = metaPage.squareMedium;
          break;
        case IllustSize.medium:
          url = metaPage.medium;
          break;
        case IllustSize.large:
          url = metaPage.large;
          break;
        case IllustSize.original:
          url = metaPage.original;
          break;
      }
      final data = await apiClient.downloadIllustData(url);
      illusts.add(data);
    }
    return illusts;
  }

  Future<Uint8List> downloadSingleIllust(
    ApiClient apiClient,
  ) async {
    if (metaSinglePage == null) {
      throw MetaSinglePageIsNull(
        // ignore: lines_longer_than_80_chars
        'The MetaSinglePage object is null, which is unexpected when downloading the illustration.',
        this,
      );
    }
    return apiClient.downloadIllustData(metaSinglePage!.originalImageUrl);
  }

  Future<List<Image?>> downloadIllustImages(
    ApiClient apiClient, {
    IllustSize downloadSize = IllustSize.large,
    bool executeThread = false,
  }) async {
    final illusts =
        await downloadIllusts(apiClient, downloadSize: downloadSize);
    final command = Command();
    final images = <Image?>[];
    final Future<Image?> Function() getImage;
    if (executeThread) {
      getImage = command.getImageThread;
    } else {
      getImage = command.getImage;
    }

    for (final illust in illusts) {
      command.decodePng(illust);
      final image = await getImage();
      images.add(image);
    }
    return images;
  }

  Future<Image?> downloadSingleIllustImage(
    ApiClient apiClient, {
    bool executeThread = false,
  }) async {
    final illust = await downloadSingleIllust(apiClient);

    final command = Command();
    final Future<Image?> Function() getImage;
    if (executeThread) {
      getImage = command.getImageThread;
    } else {
      getImage = command.getImage;
    }
    command.decodePng(illust);
    return getImage();
  }

  Future<Uint8List> downloadUgoira(
    ApiClient apiClient, {
    bool executeThread = false,
  }) async {
    if (type != IllustType.ugoira) {
      throw NotUgoiraException(
        "The specified illustration is not an 'ugoira'",
        this,
      );
    }
    final metadata = await apiClient.fetchUgoiraMetadata(id);
    final ugoiraData =
        await apiClient.downloadIllustData(metadata.zipUrls.medium);
    return ugoiraToGifBytes(ugoiraData, metadata, executeThread: executeThread);
  }
}
