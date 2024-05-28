import 'package:injectable/injectable.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';
import '../../core/constants/constants.dart';
import '../../data/api/api.dart';
import '../../data/preferences/token_preferences.dart';

@Injectable()
class AuthRepository {
  AuthRepository(this._token, this._api);

  final Api _api;
  final TokenPreference _token;

  register({
    required String name,
    required String phone,
    required String password,
  }) async {
    final body = {
      "name": name,
      "phone": phone,
      "password": password,
    };

    final response = await _api.postWithToken(path: Urls.register, body: body);
    await _onAuthResponse(response);
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

  login({
    required String phone,
    required String password,
  }) async {
    final body = {
      "phone": phone,
      "password": password,
    };
    final response = await _api.post(path: Urls.login, body: body);
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

  Future loginAsGuest() async {
    String uid = const Uuid().v1();
    final Map<String, Object> params = {
      "uuid": uid,
      "model": uid,
    };

    final response = await _api.post(path: 'guest/enters', body: params);
    await _onAuthResponseGuest(response);
  }

  _onAuthResponse(http.Response response) async {
    final body = jsonDecode(response.body);

    if (body["access_token"] == null) {
      throw Exception(body);
    } else {
      await _token.set(body["access_token"]);
    }
  }

  _onAuthResponseGuest(http.Response response) async {
    final body = jsonDecode(response.body);
    if (body["access_token"] == null) {
      throw Exception(body);
    } else {
      await _token.set(body["access_token"]);
      await _token.setGuestUser(body["access_token"]);
    }
  }

  passWordvalidator(String value) {
    if (value.length < 6) {
      return "The password must be at least 6 characters";
    } else if (value.isEmpty) {
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

  phoneValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    } else if (value.length < 12) {
      return " The phone  must be at least 12 characters";
    }
  }

  nameWordvalidator(String value) {
    if (value.length < 6) {
      return "The password must be at least 6 characters";
    } else if (value.isEmpty) {
      return "Shouldn't be empty";
    }
  }

  emailValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    }
  }

  textValidator(String value) {
    if (value.isEmpty) {
      return "Shouldn't be empty";
    }
  }
}
