import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/data/api/auth_api.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';
import 'package:karmango/domain/model/auth/register/register.dart';
import 'package:karmango/domain/model/mobile/user/user.dart';
import 'package:uuid/uuid.dart';
import '../../core/constants/constants.dart';
import '../../data/api/api.dart';
import '../../data/preferences/token_preferences.dart';

@Injectable()
class AuthRepository {
  AuthRepository(this._token, this._api, this.authApi, );

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
      final response = await _api.post(path: "/register", body: query);
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
      print('Error during registration: $e');
      rethrow;
    }
  }

  
Future<Map<String, dynamic>> updatePassword(String newPass, String confirmPass) async {
  try {
    final response = await authApi.resetPassword(newPass, confirmPass);
    // Javobni JSON formatida dekod qilamiz
    final Map<String, dynamic> result = Map<String, dynamic>.from(jsonDecode(response.body));
    return result;
  } catch (e) {
    // Xatolikni log qilish va qayta otish
    print('Error updating password: $e');
    rethrow;
  }
}


  Future<AuthResponse> login({
    required String phone,
    required String password,
  }) async {
    final query = {
      "phone": phone,
      "password": password,
    };

    final response = await _api.post(path: '/login', body: query);
    final result = jsonDecode(response.body);

    final AuthResponse data =
        AuthResponse.fromJson(result as Map<String, dynamic>);

    return data;
  }

  Future<void> logout() async {
    try {
      await authApi.logOut();
      await _token.clear();
      await _token.clearUser();
    } catch (e) {
      log.logError("Error logging out", error: e);
    }
  }

  Future<void> verify(String phone, String code) async {
    try {
      final response = await authApi.verfy(phone, code);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error verifying user", error: e);
    }
  }

  Future<void> resetPassword(String oldPassword, String newPassword) async {
    try {
      final response = await authApi.resetPassword(oldPassword, newPassword);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error resetting password", error: e);
    }
  }

//  Future<bool> forgetPassword(String phone) async {
//     try {
//       final response = await _authApi.forgetPassword(phone);
//       await _onAuthResponse(response);
//       return true;
//     } catch (e) {
//       log.logError("Error initiating password reset", error: e);
//       return false;
//     }
//   }
  Future<ResendActivation> forgetPassword({
    required String phone,
  }) async {
    final query = {
      "phone": phone,
    };

    final response = await _api.post(path: '/resend-activation', body: query);
    final result = jsonDecode(response.body);

    final ResendActivation data =
        ResendActivation.fromJson(result as Map<String, dynamic>);

    return data;
  }

  // Future<void> forgetPassword(String phone) async {
  //   try {
  //     final response = await http.post(
  //       Uri.parse('https://karmango.shop.dukan.uz/api/resend-activation'),
  //       body: jsonEncode({'phone': phone}),
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //     );

  //     if (response.statusCode == 200) {
  //       // Handle successful password reset
  //     } else {
  //       log.logError('Failed to reset password');
  //       throw Exception('Failed to reset password');
  //     }
  //   } catch (e) {
  //     // Handle exceptions
  //     rethrow; // or handle appropriately
  //   }
  // }

  Future<void> loginAsGuest() async {
    try {
      // Get device info
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      String uuid;
      String model;

      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        uuid = androidInfo.id ?? const Uuid().v1(); // Fallback if id is null
        model = androidInfo.model ?? "Unknown Android Model";
      } else if (Platform.isIOS) {
        IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
        uuid = iosInfo.identifierForVendor ??
            const Uuid().v1(); // Fallback if identifierForVendor is null
        model = iosInfo.utsname.machine ?? "Unknown iOS Model";
      } else {
        // Handle other platforms or set defaults
        uuid = const Uuid().v1();
        model = "Unknown Model";
      }

      // Call the API to create a guest login
      final response = await authApi.createGuestLogin(uuid, model);

      // Handle the authentication response
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

  Future<void> activateUser({
    required String phone,
    required String code,
  }) async {
    final body = {
      "phone": phone,
      "password": code,
    };

    try {
      final response =
          await _api.postWithToken(path: Urls.activateUser, body: body);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error activating user", error: e);
    }
  }

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
      final response =
          await _api.postWithToken(path: Urls.changePassword, body: body);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error changing password", error: e);
    }
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

  Future<void> verifySms(String phone, String code) async {
    try {
      final response = await authApi.verfy(removePlus(phone), code);
      await _onAuthResponse(response);
    } catch (e) {
      log.logError("Error verifying SMS", error: e);
    }
  }

  Future<void> _onAuthResponse(http.Response response) async {
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      if (body["token"] == null) {
        log.logDebug("TOKEN: $body");
      } else {
        await _token.set(body["token"]);
      }
    } else {
      log.logError(
          "Auth Response Error: ${response.statusCode} - ${response.reasonPhrase}");
    }
  }

  Future<void> _onAuthResponseGuest(http.Response response) async {
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      if (body["token"] == null) {
        log.logDebug("ACCESS_TOKEN: $body");
      } else {
        await _token.set(body["token"]);
        await _token.saveGuestUser(body["token"]);
      }
    } else {
      log.logError(
          "Guest Auth Response Error: ${response.statusCode} - ${response.reasonPhrase}");
    }
  }

  String removePlus(String input) {
    List<String> list1 = input.split("");
    if (list1[0] == "+") {
      list1.removeAt(0);
    }
    return list1.join();
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
