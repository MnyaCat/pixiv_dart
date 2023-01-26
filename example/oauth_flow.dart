import 'dart:convert';
import 'dart:io';

import 'package:pixiv_dart/pixiv_dart.dart';

void main(List<String> args) async {
  print(args);
  final authClient = AuthClient();

  final authCode = authClient.getAuthCode();

  stdout.write('link: ${authCode.url}\ncode: ');
  final code = stdin.readLineSync();
  if (code == null || code.isEmpty) {
    stdout.write('Please enter the code.');
    exit(1);
  }
  authCode.code = code;

  try {
    final account = await authClient.getAccount(authCode);
    stdout.write('access token: ${account.accessToken}\n'
        'refresh token: ${account.refreshToken}\n');

    if (args.isNotEmpty && args[0] == '--save-account') {
      final encoder = JsonEncoder.withIndent(' ' * 4);
      final file = File('user_account.json');
      await file.writeAsString(encoder.convert(account.toJson()));
      stdout.write('Account saved on user_account.json.');
    }
  } on PixivException catch (e) {
    stdout.write(e);
    exit(1);
  }
}
