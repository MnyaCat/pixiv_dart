import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'profile_image_urls.freezed.dart';
part 'profile_image_urls.g.dart';

@freezed
class ProfileImageUrls with _$ProfileImageUrls {
  factory ProfileImageUrls({
    required String medium,
  }) = _ProfileImageUrls;

  factory ProfileImageUrls.fromJson(JsonMap json) =>
      _$ProfileImageUrlsFromJson(json);
}
