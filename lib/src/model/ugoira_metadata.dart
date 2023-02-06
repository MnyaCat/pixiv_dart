import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'ugoira_metadata.freezed.dart';
part 'ugoira_metadata.g.dart';

@freezed
class ZipUrls with _$ZipUrls {
  factory ZipUrls({
    required String medium,
  }) = _ZipUrls;

  factory ZipUrls.fromJson(JsonMap json) => _$ZipUrlsFromJson(json);
}

@freezed
class Frame with _$Frame {
  factory Frame({
    required String file,
    required int delay,
  }) = _Frame;

  factory Frame.fromJson(JsonMap json) => _$FrameFromJson(json);
}

@freezed
class UgoiraMetadata with _$UgoiraMetadata {
  factory UgoiraMetadata({
    required ZipUrls zipUrls,
    required List<Frame> frames,
  }) = _UgoiraMetadata;

  factory UgoiraMetadata.fromJson(JsonMap json) =>
      _$UgoiraMetadataFromJson(json);
}
