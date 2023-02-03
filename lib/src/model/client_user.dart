import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'client_user.freezed.dart';
part 'client_user.g.dart';

@freezed
class CllientUserProfileImageUrls with _$CllientUserProfileImageUrls {
  factory CllientUserProfileImageUrls({
    @JsonKey(name: 'px_16x16') required String px16x16,
    @JsonKey(name: 'px_50x50') required String px50x50,
    @JsonKey(name: 'px_170x170') required String px170x170,
  }) = _CllientUserProfileImageUrls;

  factory CllientUserProfileImageUrls.fromJson(JsonMap json) =>
      _$CllientUserProfileImageUrlsFromJson(json);
}

class IdConverter implements JsonConverter<int, String> {
  const IdConverter();

  @override
  int fromJson(String json) => int.parse(json);

  @override
  String toJson(int object) => object.toString();
}

@freezed
class ClientUser with _$ClientUser {
  factory ClientUser({
    required CllientUserProfileImageUrls profileImageUrls,
    @IdConverter() required int id,
    required String name,
    required String account,
    required String mailAddress,
    required bool isPremium,
    required int xRestrict,
    required bool isMailAuthorized,
    required bool requirePolicyAgreement,
  }) = _ClientUser;

  factory ClientUser.fromJson(JsonMap json) => _$ClientUserFromJson(json);
}
