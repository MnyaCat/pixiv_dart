import 'package:http/http.dart' show Response;
import 'package:pixiv_dart/src/model/illust.dart';

class PixivException implements Exception {}

class LoginFailure implements PixivException {
  const LoginFailure(this.message, this.response);

  final String message;
  final Response response;

  @override
  String toString() => 'LoginFailure: $message, response = $response';
}

// OAuth process error(トークンが無効/失効済み)
class OAuthProcessException implements PixivException {
  OAuthProcessException(this.message, this.response);

  final String message;
  final Response response;

  @override
  String toString() => 'OAuthProcessException: $message, response = $response';
}

class PixivHttpException implements PixivException {
  const PixivHttpException(this.message, this.response, this.status);

  final String message;
  final Response response;
  final int status;

  @override
  String toString() =>
      'HttpException: $message, status = $status, response = $response';
}

// 403
class Forbidden extends PixivHttpException {
  const Forbidden(super.message, super.response, super.status);
}

// 404
class NotFound extends PixivHttpException {
  const NotFound(super.message, super.response, super.status);
}

// 429
class RateLimited extends PixivHttpException {
  const RateLimited(super.message, super.response, super.status);
}

// 5xx
class PixivServerError extends PixivHttpException {
  const PixivServerError(super.message, super.response, super.status);
}

class MetaSinglePageIsNull implements PixivException {
  const MetaSinglePageIsNull(this.message, this.illust);

  final String message;
  final Illust illust;

  @override
  String toString() => 'MetaSinglePageIsNull: $message, illust = $illust';
}
