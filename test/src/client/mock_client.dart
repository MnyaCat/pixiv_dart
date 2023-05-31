import 'dart:io';

import 'package:http/http.dart';
import 'package:http/testing.dart';

String _toFileName(String urlPath) {
  return urlPath.substring(1).replaceAll('/', '_');
}

MockClient createMockClient() {
  return MockClient((request) async {
    final urlPath = request.url.path;
    final filePath = _toFileName(urlPath);
    final file = File('test/response/$filePath.txt');

    if (file.existsSync()) {
      final body = await file.readAsString();
      return Response(body, 200);
    }
    // pixivの404エラーに差し替え
    return Response('Invalid endpoint', 404);
  });
}
