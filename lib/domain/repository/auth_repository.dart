import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/data/api/auth_api.dart';
import 'package:karmango/domain/model/mobile/auth_response.dart';
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

   login({required String password, required String phone,}) async {
    final response = await _authApi.login(password, phone);
    var decodedData = jsonDecode(response.body);
    return AuthResponse.fromJson(decodedData);
  }

  // login({required String phone, required String password}) async {
  //   final body = {
  //     "phone": phone,
  //     "password": password,
  //   };
  //   final response = await _api.post(path: '/login-mblp', body: body);
  //   await _onAuthResponse(response);
  // }

  Future<http.Response> register({
    required String name,
    required String phone,
    required String password,
  }) async {
    final body = {
      "name": name,
      "phone": phone,
      "password": password,
    };

    final response = await _api.postWithToken(path: '/register', body: body);
    await _onAuthResponse(response);
    return response;
  }

  activateUser({
    required String phone,
    required String code,
  }) async {
    final body = {
      "phone": phone,
      "password": code,
    };

    final response =
        await _api.postWithToken(path: Urls.activateUser, body: body);
    await _onAuthResponse(response);
  }

  forgetPassword({required String phone}) async {
    final body = {"phone": phone};
    final response =
        await _api.postWithToken(path: Urls.forgotPassword, body: body);
    await _onAuthResponse(response);
  }

  changePassword({
    required String userId,
    required String password,
    required String confirmPassword,
  }) async {
    final body = {
      "user_id": userId,
      "password": password,
      "confirm_password": confirmPassword,
    };
    final response =
        await _api.postWithToken(path: Urls.changePassword, body: body);
    await _onAuthResponse(response);
  }

  logout() async {
    var data = await _api.postWithToken(path: Urls.logout);

    await _token.clear();
    await _token.clearUser();
  }

  resendActivationCode({
    required String phone,
  }) async {
    final body = {
      "phone": phone,
    };
    final response =
        await _api.postWithToken(path: Urls.resendActivation, body: body);
  }

 
  Future<void> loginAsGuest() async {
  String uid = const Uuid().v1();
  final Map<String, Object> params = {
    "uuid": uid,
    "model": uid, // Assuming model is same as uuid for this example
  };

  log.logDebug("Sending request with params: $params");

  try {
    final response = await _api.post(path: Urls.guestEnters, body: params);
    await _onAuthResponseGuest(response);
  } catch (e) {
    log.logError("Error logging in as guest", error: e);
    rethrow;
  }
}


  Future<void> _onAuthResponse(http.Response response) async {
    final body = jsonDecode(response.body);

    if (response.statusCode == 200 && body["access_token"] != null) {
      // Handle the token (save it, use it, etc.)

      // log.logDebug("Token: ${body["token"]}");
    } else {
      log.logDebug(body["message"] ?? 'Unknown error');
      // throw Exception(body["message"] ?? 'Unknown error');
    }
  }

  verifySms(String phone, String code) async {
    final response = await _authApi.verfy(removePlus(phone), code);
    await _onAuthResponse(response);
  }

  // _onAuthResponse(http.Response response) async {
  //   final body = jsonDecode(response.body);

  //   if (body["token"] == null) {
  //     throw Exception(body);
  //   } else {
  //     await _token.set(body["token"]);
  //   }
  // }

  removePlus(String input) {
    List list1 = [];
    list1 = input.split("");
    if (list1[0] == "+") {
      list1.removeAt(0);
      return list1.join();
    } else {
      return list1.join();
    }
  }

 _onAuthResponseGuest(http.Response response) async {
  final body = jsonDecode(response.body);
  if (body["access_token"] == null) {
    log.logDebug("ACCESS_TOKEN: $body");
  } else {
    await _token.set(body["access_token"]);
    await _token.setGuestUser(body["access_token"]);
  }
}

  passWordvalidator(String p0) {
    if (p0.length < 6) {
      return "The password must be at least 6 characters";
    } else if (p0.isEmpty) {
      return "Shouldn't be empty";
    }
  }

  confirmationValidator(String confirmedPass, String passWord) {
    if (confirmedPass.length < 6) {
      return "The password must be at least 6 characters";
    } else if (confirmedPass.isEmpty) {
      return "Shouldn't be empty";
    } else if (confirmedPass != passWord) {
      return "Should be equal";
    }
  }

//  String? phoneValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter a phone number';
//     }
  // Phone formatini tekshirish lozim bo'lsa, qo'shimcha validatsiya
//     return null;
//   }

  // String? nameValidator(String? value) {
  //   if (value == null || value.isEmpty) {
  //     return 'Iltimos, ismingizni kiriting';
  //   }
  //   if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
  //     return 'Ismingizda faqat harflar va bo\'sh joylar bo\'lishi kerak';
  //   }
  //   return null;
  // }
//  String? emailValidator(String? value) {
//     if (value == null || value.isEmpty) {
//       return 'Please enter an email';
//     }
//     // Email formatini tekshirish lozim bo'lsa, qo'shimcha validatsiya
//     return null;
//   }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, emailni kiriting';
    }
    // Email formatini tekshirish uchun qo'shimcha validatsiya
    return null;
  }

  String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, telefon raqamini kiriting';
    }
    // Telefon raqami formatini tekshirish uchun qo'shimcha validatsiya
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

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Iltimos, parolni kiriting';
    }
    if (value.length < 8) {
      return 'Parol kamida 8 ta belgidan iborat bo\'lishi kerak';
    }
    if (!RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
        .hasMatch(value)) {
      return 'Parolda kamida bitta katta harf, kichik harf va raqam bo\'lishi kerak';
    }
    return null;
  }

  textValidator(String p0) {
    if (p0.isEmpty) {
      return "Shouldn't be empty";
    }
  }
}
