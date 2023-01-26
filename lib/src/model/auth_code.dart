class AuthCode {
  AuthCode(this.code, this.codeVerifier, this.codeChallenge, this.url);

  String code;
  final String codeVerifier;
  final String codeChallenge;
  final Uri url;
}
