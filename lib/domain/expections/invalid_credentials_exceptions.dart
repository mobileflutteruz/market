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
