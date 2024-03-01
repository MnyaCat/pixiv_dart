import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';

String _toFileName(String urlPath) {
  return urlPath.substring(1).replaceAll('/', '_');
}

MockClient createMockClient() {
  return MockClient((request) async {
    final pximgMode = request.url.host == 'i.pximg.net';
    final String fileName;

    // i.pximg.netがホストの場合は拡張子がURLに含まれている
    if (pximgMode) {
      final urlPath = request.url.path;
      fileName = _toFileName(urlPath);
    } else {
      final urlPath = request.url.path;
      fileName = _toFileName('$urlPath.txt');
    }

    final file = File('test/response/$fileName');

    if (file.existsSync()) {
      if (pximgMode) {
        final body = await file.readAsBytes();
        return Response.bytes(body, 200);
      }
      final body = await file.readAsString();
      return Response(body, 200);
    }
    // pixivの404エラーに差し替え
    return Response('Invalid endpoint', 404);
  });
}
