import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';

import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/data/api/api.dart';
import 'package:karmango/data/api/auth_api.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';
import 'package:uuid/uuid.dart';

import 'package:karmango/domain/model/auth/change_password/change_password_model.dart';
import 'package:karmango/domain/model/auth/register/register.dart';
import 'package:karmango/domain/model/mobile/user/user.dart';

import '../../config/token_data_source.dart';

@Injectable()
class AuthRepository {
  AuthRepository(
    this._token,
    this._api,
    this.authApi,
  );

  final Api _api;
  final AuthApi authApi;
  final TokenPreference _token;
  final LoggingService log = LoggingService();

  Future<RegisterModel> register({
    required String password,
    required String phone,
    required String name,
  }) async {
    final query = {
      "password": password,
      "phone": phone,
      "name": name,
    };
    try {
      final response = await _api.postWithToken(path: "/register", body: query);
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);
        final RegisterModel data =
            RegisterModel.fromJson(result as Map<String, dynamic>);
        return data;
      } else {
        throw Exception(
            'Registration failed with status: ${response.statusCode}');
      }
    } catch (e) {
      log.logError('Error during registration', error: e);
      rethrow;
    }
  }

  Future<ChangePasswordModel> updatePassword(
      String newPass, String confirmPass) async {
    try {
      // final  userId = await _userSessionManager.getUserId();
      final userId = await _token.getUserId();
      print("__________________________USER ID: $userId");
      if (userId == null) {
        throw AuthenticationException('User not found');
      }
      final response = await authApi.resetPassword(
        newPass,
        confirmPass,
        userId,
      );
      final Map<String, dynamic> result =
          Map<String, dynamic>.from(jsonDecode(response.body));
      return ChangePasswordModel.fromJson(result);
    } catch (e) {
      print('Error updating password: $e');
      rethrow;
    }
  }

  bool isValidPassword(String password, String confirmPassword) {
    return password.length >= 8 && password == confirmPassword;
  }

  // Future<void> login({
  //   required String phone,
  //   required String password,
  // }) async {
  //   final body = {
  //     "phone": phone,
  //     "password": password,
  //   };
  //   final response = await _api.postWithToken(path: Urls.login, body: body);
  //   if (response != null) {
  //     final authResponse = AuthResponse.fromJson(jsonDecode(response.body));
  //     if (authResponse.token != null) {
  //       await _saveUserToken(authResponse.token!);
  //       await _onAuthResponse(authResponse); // Remove the type cast
  //     } else {
  //       throw Exception('Login muvaffaqiyatsiz: Token topilmadi');
  //     }
  //   } else {
  //     throw Exception('Login muvaffaqiyatsiz: Javob yo\'q');
  //   }
  // }

// Tokenni saqlash funksiyasi
  Future<void> _saveUserToken(String token) async {
    // await _userSessionManager.saveUsersToken(token);
    await _token.saveUserToken(token);
  }

  Future<AuthResponse> login({
    required String phone,
    required String password,
  }) async {
    final body = {
      "phone": phone,
      "password": password,
    };
    final response = await _api.postWithToken(path: Urls.login, body: body);

    final responseBody = jsonDecode(response.body);
    final authResponse = AuthResponse.fromJson(responseBody);

    if (authResponse.status == true) {
      if (authResponse.token != null) {
        await _token.saveUserToken(authResponse.token!);

        log.logInfo('USERS TOKEN successfully TAKEN: ${authResponse.token}');
      } else {
        log.logError('Token not found in the response');
      }
    }

    return authResponse;
  }


  Future<Response> logout() async {
    var data = await _api.post(path: "/logout");
    log.logInfo("LOOOOOOG OOUT");
    try {
      await _token.clearUserToken();
      await _token.clearUserId();
      await _token.clearUser();
      log.logInfo(" CLEAR TOKEN IN getUser:${ _token.clearUserToken()}");
      log.logInfo(" CLEAR TOKEN IN clearUser:${_token.clearUserId()}");
      log.logInfo(" CLEAR TOKEN IN clearUser:${_token.clearUser()}");
    } catch (e) {
      log.logError("Error logging out", error: e);
    }
    return data;
  }

  Future<void> verifySms(String phone, String code) async {
    try {
      final response = await authApi.verfy(phone, code);
      final responseBody = jsonDecode(response.body);

      if (responseBody['status'] == true) {
        final String? userId = responseBody['user_id_to_restore_password'];

        // Saqlangan User ID
        // await _userSessionManager.saveUserId(userId);
        await _token.saveUserId(userId);

        log.logInfo('User verified successfully: ${responseBody['message']}');
      } else {
        throw AuthenticationException(
            'Verification failed: ${responseBody['message']}');
      }
    } catch (e) {
      log.logError("Error verifying user", error: e);
      rethrow;
    }
  }

  // Future<void> verifySms(String phone, String code) async {
  //   try {
  //     final response = await authApi.verfy(phone, code);
  //     await _onAuthResponse(response);
  //   } catch (e) {
  //     log.logError("Error verifying user", error: e);
  //   }
  // }

  Future<void> loginAsGuest() async {
    try {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      String uuid;
      String model;

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        // ignore: prefer_const_constructors
        uuid = androidInfo.id;
        model = androidInfo.model;
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        uuid = iosInfo.identifierForVendor ?? Uuid().v1();
        model = iosInfo.utsname.machine;
      } else {
        uuid = const Uuid().v1();
        model = "Unknown Model";
      }

      final response = await authApi.createGuestLogin(uuid, model);

      if (response.statusCode == 200) {
        await _onAuthResponseGuest(response);
      } else {
        log.logError(
            "Error logging in as guest: ${response.statusCode} - ${response.reasonPhrase}");
      }
    } catch (e, stackTrace) {
      log.logError("Error logging in as guest",
          error: e, stackTrace: stackTrace);
    }
  }

  Future<AuthResponse?> getUserInfo() async {
    try {
      return await _token.getUser();
    } catch (e) {
      log.logError("Error getting user info", error: e);
      return null;
    }
  }

  Future<ResendActivation> forgetPassword({
    required String phone,
  }) async {
    final query = {
      "phone": phone,
    };

    final response = await _api.post(path: '/resend-activation', body: query);
    final result = jsonDecode(response.body);
    await _onAuthResponse(result);

    final ResendActivation data =
        ResendActivation.fromJson(result as Map<String, dynamic>);

    return data;
  }

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

  // Future<void> verifySms(String phone, String code) async {
  //   try {
  //     final response = await authApi.verfy(phone, code);
  //     final responseBody = jsonDecode(response.body);

  //     if (responseBody['status'] == true) {
  //       log.logInfo('User verified successfully: ${responseBody['message']}');
  //     } else {
  //       throw AuthenticationException(
  //           'Verification failed: ${responseBody['message']}');
  //     }
  //   } catch (e) {
  //     log.logError("Error verifying user", error: e);
  //     rethrow;
  //   }
  // }

  // Future<void> verifySms(String phone, String code) async {
  //   try {
  //     final response = await authApi.verfy(removePlus(phone), code);
  //     // await _onAuthResponse(response);
  //   } catch (e) {
  //     // log.logError("Error verifying SMS", error: e);
  //     print(
  //         "------------------------ ERROR VERFY REPOSITORY -------------------");
  //     print("ERROR VERFY REPOSITORY: $e");
  //   }
  // }

  _onAuthResponse(Response response) async {
    final body = jsonDecode(response.body);

    if (body["token"] == null) {
      // throw Exception(body);
      log.logInfo(body);
    } else {
      // await _userSessionManager.saveUserToken(body["token"]);
      await _token.saveUserToken(body["token"]);
    }
  }

  Future<void> _onAuthResponseGuest(Response response) async {
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      if (body["token"] == null) {
        log.logDebug("ACCESS_TOKEN: $body");
      } else {
        // await _userSessionManager.saveUserToken(body["token"]);
        await _token.saveUserToken(body["token"]);
        await _token.saveGuestToken(body["token"]);
      }
    } else {
      log.logError(
          "Guest Auth Response Error: ${response.statusCode} - ${response.reasonPhrase}");
    }
  }

  String removePlus(String input) {
    List<String> list1 = input.split("");
    if (list1[0] == "+") {
      return input.substring(1, input.length);
    } else {
      return input;
    }
  }

  String? passWordvalidator(String value) {
    if (value.length < 6) {
      return "The password must be at least 6 characters";
    } else if (value.isEmpty) {
      return "Shouldn't be empty";
    }
    return null;
  }

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

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, emailni kiriting';
    }
    return null;
  }

  String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, telefon raqamini kiriting';
    }
    return null;
  }

  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, ismingizni kiriting';
    }
    if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
      return 'Ismingizda faqat harflar va bo\'sh joylar bo\'lishi kerak';
    }
    return null;
  }

  String? textValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    }
    return null;
  }
}
