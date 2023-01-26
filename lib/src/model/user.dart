import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'profile_image_urls.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String name,
    required String account,
    required ProfileImageUrls profileImageUrls,
    bool? isFollowed,
  }) = _User;

  factory User.fromJson(JsonMap json) => _$UserFromJson(json);
}
