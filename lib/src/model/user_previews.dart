import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'user_preview.dart';

part 'user_previews.freezed.dart';
part 'user_previews.g.dart';

@freezed
class UserPreviews with _$UserPreviews {
  factory UserPreviews({
    required List<UserPreview> userPreviews,
    required String? nextUrl,
  }) = _UserPreviews;

  factory UserPreviews.fromJson(JsonMap json) => _$UserPreviewsFromJson(json);
}
