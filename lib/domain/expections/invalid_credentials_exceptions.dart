class InvalidCredentialsException implements Exception {
  final String message;

  InvalidCredentialsException([this.message = 'Invalid credentials provided.']);

  @override
  String toString() {
    return "InvalidCredentialsException: $message";
  }
}

class UserNotFoundException implements Exception {
  final String message;

  UserNotFoundException([this.message = 'User not found.']);

  @override
  String toString() {
    return "UserNotFoundException: $message";
  }
}

class NameUnavailableException implements Exception {
  final String message;

  NameUnavailableException([this.message = 'Name is unavailable.']);

  @override
  String toString() {
    return "NameUnavailableException: $message";
  }
}

class AuthenticationException implements Exception {
  final String message;

  AuthenticationException(this.message);
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);
}

class InvalidPasswordException implements Exception {
  final String message;
  InvalidPasswordException(this.message);
}
