import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

import '../constants.dart';
import '../exceptions.dart';
import '../model/auth_code.dart';
import '../model/user_account.dart';
import 'base_client.dart';

class AuthClient extends BaseClient {
  static const defaultHeader = <String, String>{
    'User-Agent': 'PixivAndroidApp/5.0.234 (Android 11; Pixel 5)',
  };

  @override
  JsonMap parse(http.Response response) {
    final json = jsonDecode(response.body) as JsonMap;
    final statusCode = response.statusCode;

    if (statusCode == 200) {
      return json;
    }

    final errorMessage = json['error'] as String? ?? '';

    if (statusCode == 400) {
      throw LoginFailure(errorMessage, response);
    } else if (statusCode == 403) {
      throw Forbidden(errorMessage, response, statusCode);
    } else if (statusCode == 404) {
      throw NotFound(errorMessage, response, statusCode);
    } else if (statusCode == 429) {
      throw RateLimited(errorMessage, response, statusCode);
    } else if (statusCode ~/ 100 == 500) {
      throw PixivServerError(
        errorMessage,
        response,
        statusCode,
      );
    } else {
      throw PixivHttpException(errorMessage, response, statusCode);
    }
  }

  AuthCode getAuthCode() {
    final codeVerifier = getCodeVerifier(32);
    final codeChallenge = getCodeChallenge(codeVerifier);
    final body = {
      'code_challenge': codeChallenge,
      'code_challenge_method': 'S256',
      'client': 'pixiv-android',
    };

    return AuthCode(
      '',
      codeVerifier,
      codeChallenge,
      Uri.https(apiHostname, '/web/v1/login', body),
    );
  }

  Future<UserAccount> getAccount(AuthCode authCode) async {
    final url = Uri.https(authHostname, '/auth/token');
    final body = {
      'client_id': clientId,
      'client_secret': clientSecret,
      'code': authCode.code,
      'code_verifier': authCode.codeVerifier,
      'grant_type': 'authorization_code',
      'include_policy': true.toString(),
      'redirect_uri': 'https://$apiHostname/web/v1/users/auth/pixiv/callback',
    };
    final response = await http.post(url, headers: defaultHeader, body: body);
    final jsonResponse = parse(response);
    return UserAccount.initFromJson(jsonResponse);
  }

  Future<UserAccount> refreshAccount(String refreshToken) async {
    final url = Uri.https(authHostname, '/auth/token');
    final body = {
      'client_id': clientId,
      'client_secret': clientSecret,
      'include_policy': true.toString(),
      'grant_type': 'refresh_token',
      'refresh_token': refreshToken,
    };
    final response = await http.post(url, headers: defaultHeader, body: body);
    final jsonResponse = parse(response);
    return UserAccount.initFromJson(jsonResponse);
  }

  String getCodeVerifier(int length) {
    const characters =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~';
    final random = Random.secure();
    final codeVerifier = List.generate(
      length,
      (_) => characters[random.nextInt(characters.length)],
    ).join();
    return codeVerifier;
  }

  String getCodeChallenge(String codeVerifier) {
    final hashedCodeVerifier = sha256.convert(ascii.encode(codeVerifier));
    return base64
        .encode(hashedCodeVerifier.bytes)
        .replaceAll('=', '')
        .replaceAll('+', '-')
        .replaceAll('/', '_');
  }

  bool isActiveAccount(UserAccount loginInfo) {
    final expiryDate =
        loginInfo.acquisitionTime.add(Duration(seconds: loginInfo.expiresIn));
    return expiryDate.isAfter(DateTime.now());
  }
}
