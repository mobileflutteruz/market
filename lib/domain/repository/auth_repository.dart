import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/data/api/auth_api.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';

import 'package:uuid/uuid.dart';
import '../../core/constants/constants.dart';
import '../../data/api/api.dart';
import '../../data/preferences/token_preferences.dart';

@Injectable()
class AuthRepository {
  AuthRepository(this._token, this._api, this._authApi);

  final Api _api;
  final AuthApi _authApi;
  final TokenPreference _token;
  final LoggingService log = LoggingService();

  /// Registers a new user with the provided details.
  Future<void> register({
    required String password,
    required String phone,
    required String name,
  }) async {
    try {
      final response = await _authApi.register(password, phone, name);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error registering user", error: e);
    }
  }

  /// Logs out the current user and clears the token.
  Future<void> logout() async {
    try {
      await _authApi.logOut();
      await _token.clear();
      await _token.clearUser();
    } catch (e) {
      log.logError("Error logging out", error: e);
    }
  }

  /// Verifies a user's phone number with a given code.
  Future<void> verify(String phone, String code) async {
    try {
      final response = await _authApi.verfy(phone, code);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error verifying user", error: e);
    }
  }

  /// Resets the user's password.
  Future<void> resetPassword(String oldPassword, String newPassword) async {
    try {
      final response = await _authApi.resetPassword(oldPassword, newPassword);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error resetting password", error: e);
    }
  }

  /// Initiates a password reset for the given phone number.
  Future<void> forgetPassword(String phone) async {
    try {
      final response = await _authApi.forgetPassword(phone);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error initiating password reset", error: e);
    }
  }

  /// Logs in as a guest user.
  Future<void> loginAsGuest() async {
    try {
      final response = await _authApi.createGuestLogin(const Uuid().v1());
      await _onAuthResponseGuest(response);
    } catch (e) {
      log.logError("Error logging in as guest", error: e);
    }
  }

  /// Retrieves the current user's information.
  Future<AuthResponse?> getUserInfo() async {
    try {
      return await _token.getUser();
    } catch (e) {
      log.logError("Error getting user info", error: e);
      return null;
    }
  }

  /// Logs in a user with the given phone number and password.
  Future<void> login({
    required String phone,
    required String password,
  }) async {
    final body = {
      "phone": phone,
      "password": password,
    };

    try {
      final response = await _api.post(path: '/login-mblp', body: body);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error logging in", error: e);
    }
  }

  /// Activates a user with the given phone number and code.
  Future<void> activateUser({
    required String phone,
    required String code,
  }) async {
    final body = {
      "phone": phone,
      "password": code,
    };

    try {
      final response = await _api.postWithToken(path: Urls.activateUser, body: body);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error activating user", error: e);
    }
  }

  /// Changes the user's password.
  Future<void> changePassword({
    required String userId,
    required String password,
    required String confirmPassword,
  }) async {
    final body = {
      "user_id": userId,
      "password": password,
      "confirm_password": confirmPassword,
    };

    try {
      final response = await _api.postWithToken(path: Urls.changePassword, body: body);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error changing password", error: e);
    }
  }

  /// Resends the activation code to the given phone number.
  Future<void> resendActivationCode({
    required String phone,
  }) async {
    final body = {
      "phone": phone,
    };

    try {
      await _api.postWithToken(path: Urls.resendActivation, body: body);
    } catch (e) {
      log.logError("Error resending activation code", error: e);
    }
  }

  /// Verifies the SMS code for the given phone number.
  Future<void> verifySms(String phone, String code) async {
    try {
      final response = await _authApi.verfy(removePlus(phone), code);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error verifying SMS", error: e);
    }
  }

  /// Handles the authentication response and saves the token if available.
  Future<void> _onAuthResponse(http.Response response) async {
    final body = jsonDecode(response.body);

    if (response.statusCode == 200 && body["access_token"] != null) {
      await _token.set(body["access_token"]);
      await _token.setUser(body);
    } else {
      log.logDebug(body["message"] ?? 'Unknown error');
      throw Exception(body["message"] ?? 'Unknown error');
    }
  }

  /// Handles the guest login response and saves the guest token.
  Future<void> _onAuthResponseGuest(http.Response response) async {
    final body = jsonDecode(response.body);
    if (body["access_token"] == null) {
      log.logDebug("ACCESS_TOKEN: $body");
    } else {
      await _token.set(body["access_token"]);
      await _token.setGuestUser(body["access_token"]);
    }
  }

  /// Removes the plus sign from the phone number.
  String removePlus(String input) {
    List<String> list1 = input.split("");
    if (list1[0] == "+") {
      list1.removeAt(0);
    }
    return list1.join();
  }

  /// Validates the password.
  String? passWordvalidator(String value) {
    if (value.length < 6) {
      return "The password must be at least 6 characters";
    } else if (value.isEmpty) {
      return "Shouldn't be empty";
    }
    return null;
  }

  /// Validates the confirmation password.
  String? confirmationValidator(String confirmedPass, String passWord) {
    if (confirmedPass.length < 6) {
      return "The password must be at least 6 characters";
    } else if (confirmedPass.isEmpty) {
      return "Shouldn't be empty";
    } else if (confirmedPass != passWord) {
      return "Should be equal";
    }
    return null;
  }

  /// Validates the email.
  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, emailni kiriting';
    }
    // Email format validation
    return null;
  }

  /// Validates the phone number.
  String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, telefon raqamini kiriting';
    }
    // Phone number format validation
    return null;
  }

  /// Validates the name.
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, ismingizni kiriting';
    }
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Ismingizda faqat harflar va bo\'sh joylar bo\'lishi kerak';
    }
    return null;
  }

  /// Validates general text input.
  String? textValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    }
    return null;
  }
}
