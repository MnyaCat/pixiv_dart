import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'profile_image_urls.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  factory UserInfo({
    required int id,
    required String name,
    required String account,
    required ProfileImageUrls profileImageUrls,
    String? comment,
    required bool isFollowed,
    bool? isAccessBlockingUser,
  }) = _UserInfo;

  factory UserInfo.fromJson(JsonMap json) => _$UserInfoFromJson(json);
}
