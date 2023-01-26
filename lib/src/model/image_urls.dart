import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'image_urls.freezed.dart';
part 'image_urls.g.dart';

@freezed
class ImageUrls with _$ImageUrls {
  factory ImageUrls({
    required String squareMedium,
    required String medium,
    required String large,
  }) = _ImageUrls;

  factory ImageUrls.fromJson(JsonMap json) => _$ImageUrlsFromJson(json);
}
