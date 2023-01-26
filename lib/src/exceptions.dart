import 'package:http/http.dart' show Response;

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
  const Forbidden(super.response, super.status, super.message);
}

// 404
class NotFound extends PixivHttpException {
  const NotFound(super.response, super.status, super.message);
}

// 429
class RateLimited extends PixivHttpException {
  const RateLimited(super.response, super.status, super.message);
}

// 5xx
class PixivServerError extends PixivHttpException {
  const PixivServerError(super.response, super.status, super.message);
}
