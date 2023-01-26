import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'client_user.dart';

part 'user_account.freezed.dart';
part 'user_account.g.dart';

@freezed
class UserAccount with _$UserAccount {
  factory UserAccount({
    required String accessToken,
    required int expiresIn,
    required String tokenType,
    required String scope,
    required String refreshToken,
    required ClientUser user,
    required DateTime acquisitionTime,
  }) = _UserAccount;

  factory UserAccount.initFromJson(JsonMap json) {
    json['acquisition_time'] = DateTime.now().toIso8601String();
    return UserAccount.fromJson(json);
  }

  factory UserAccount.fromJson(JsonMap json) => _$UserAccountFromJson(json);

  const UserAccount._();

  bool isActive() {
    final expiryDate = acquisitionTime.add(Duration(seconds: expiresIn));
    return expiryDate.isAfter(DateTime.now());
  }
}
