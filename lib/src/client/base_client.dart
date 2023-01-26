import 'package:http/http.dart' as http;

import '../constants.dart';

abstract class BaseClient {
  const BaseClient();

  String get clientId => 'MOBrBDS8blbauoSck0ZfDbtuzpyT';
  String get clientSecret => 'lsACyCD94FhDUtGTXi3QzcFE2uU1hqtDaKeqrdwj';
  String get apiHostname => 'app-api.pixiv.net';
  String get authHostname => 'oauth.secure.pixiv.net';

  JsonMap parse(http.Response response);
}
