import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/user_data_source.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';

@Injectable()
class AuthApi {
  final Api _api;

  AuthApi(this._api, this._userData);
  // ignore: unused_field
  final UserDataDataSource _userData;

  register(String password, String phone, String email) async {
    final body = {"password": password, "phone": phone, "email": email};
    Response data = await _api.postWithToken(path: Urls.register, body: body);
    return data.body;
  }

  Future<Response> login(
    String phone,
    String password,
  ) async {
    final body = {
      "phone": phone,
      "password": password,
    };

    var data = await _api.post(path: "login", body: body);
    return data;
  }

  Future<Response> logOut() async {
    var data = await _api.post(path: "/logout");
    return data;
  }
 

  // Future<Response> verfy(String phone, String code) async {
  //   final body = {"code": code, "phone": phone};
  //   var data = await _api.post(path: "/insert-code", body: body);
  //   return data;
  // }
  Future<Response> verfy(String phone, String code) async {
    final body = {"code": code, "phone": phone};
    var data = await _api.post(path: "/insert-code", body: body);
    return data;
  } 

  Future<Response> resetPassword(
      String password, String confirmPassword, String userId) async {
    final body = {
      "password": password, // Parol
      "confirm_password": confirmPassword // Parolni tasdiqlash
    };
    print('USER ID IS HEREEEEEEEE: ${userId}');
    // POST so'rovini "/restore-password/$userId" endpointiga yuborish
    var data = await _api.postWithToken(path: "/restore-password/$userId", body: body);

    // So'rov natijasini konsolga chiqarish
    print("RESET PASSWORD: $data");

    return data; // Javobni qaytarish
  }

  Future<Response> updatePassword(
      String newPass, String confirmPass, String userId) async {
    final Map<String, Object> params = {
      'password': newPass,
      'password_confirmation': confirmPass
    };
    var data = await _api.postWithToken(
      path: "/restore-password/$userId",
      body: params,
    );
    // ignore: avoid_print
    print("-------------here-------");
    // ignore: avoid_print
    print(data);
    return data;
  }
  // Future<Response> forgetPassword(String phone) async {
  //   final body = {"phone": phone};
  //   var data = await _api.postWithToken(path: "/resend-activation", body: body);
  //   return data;
  // }

  Future<Response> createGuestLogin(String uuid, String model) async {
    final Map<String, dynamic> params = {
      "uuid": uuid,
      "model": model,
    };
    var data = await _api.post(path: 'guest/login', body: params);
    return data;
  }

  Future getUserInfo() async {
    final response = await _api.getWithToken(path: 'client/profile/info');
    return response;
  }

  // Future<Response> updatePassword(String newPass, String confirmPass) async {
  //   final Map<String, Object> params = {
  //     'password': newPass,
  //     'password_confirmation': confirmPass
  //   };
  //   var data = await _api.post(
  //     path: "updatePassword",
  //     body: params,
  //   );
  //   print("-------------here-------");
  //   print(data);
  //   return data;
  // }
}
