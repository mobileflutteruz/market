class TokenCredentialExceptions implements Exception {
  final String message;

  TokenCredentialExceptions([this.message = 'Token credential error']);

  @override
  String toString() => 'TokenCredentialExceptions: $message';
}
