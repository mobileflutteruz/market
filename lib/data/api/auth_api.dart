import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/data/api/api.dart';


@Injectable()
class AuthApi {
  final Api _api;

  AuthApi(this._api);
  
  register( String password, String phone, String email) async {
    final body = {
   
      "password": password,
      "phone": phone,
      "email": email
    };
    Response data = await _api.post(path: Urls.register, body: body);
    return data.body;
  }

   Future<Response> login(String phone, String password, ) async {
    final body = {"phone": phone, "password": password,};

    var data = await _api.post(path: "/login", body: body);
    return data;
  }


  Future<Response> logOut() async {
    var data = await _api.post(path: Urls.logout);
    return data;
  }

  Future<Response> verfy(String phone, String code) async {
    final body = {"code": code, "phone": phone};
    var data = await _api.post(path: Urls.insertCode, body: body);
    return data;
  }

  Future<Response> resetPassword(
       String oldPassword, String newPassword) async {
    final body = {
   
      "old_password": oldPassword,
      "new_password": newPassword
    };
    var data = await _api.postWithToken(path: Urls.changePassword, body: body);
    return data;
  }
   Future<Response> forgetPassword(String phone) async {
    final body = {"phone": phone};
    var data = await _api.post(path: Urls.forgotPassword, body: body);
    return data;
  }



  

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

 

  
}
