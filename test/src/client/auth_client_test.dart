import 'dart:convert';
import 'dart:io';

import 'package:pixiv_dart/src/client/auth_client.dart';
import 'package:pixiv_dart/src/model/user_account.dart';
import 'package:test/test.dart';

void main() {
  test('Refresh account test', () async {
    final userAccountFile = File('test/user_account.json');
    final userAccountJson = jsonDecode(await userAccountFile.readAsString())
        as Map<String, dynamic>;
    final userAccount = UserAccount.fromJson(userAccountJson);

    final authClient = AuthClient();
    final refreshAccount =
        await authClient.refreshAccount(userAccount.refreshToken);
    expect(refreshAccount.user, userAccount.user);
  });
}
