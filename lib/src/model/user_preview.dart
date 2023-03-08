import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixiv_dart/src/model/user_info.dart';

import '../constants.dart';
import 'illust.dart';
import 'novel.dart';

part 'user_preview.freezed.dart';
part 'user_preview.g.dart';

@freezed
class UserPreview with _$UserPreview {
  factory UserPreview({
    required UserInfo user,
    required List<Illust> illusts,
    required List<Novel> novels,
    required bool isMuted,
  }) = _UserPreview;

  factory UserPreview.fromJson(JsonMap json) => _$UserPreviewFromJson(json);
}
