import 'dart:convert';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/app_init/cubit/app_init_state.dart';
import 'package:karmango/data/api/api.dart';
import '../../token_data_source.dart';

@Injectable()
class AppInitCubit extends Cubit<AppInitState> {
  // final UserSessionManager _userSessionManager;
  final TokenPreference tokenPreference;
  final Api _api;

  AppInitCubit(
      // this._userSessionManager,
      this._api,
      this.tokenPreference)
      : super(const AppInitLoadingState());

  Future<void> checkAuth() async {
    emit(const AppInitLoadingState());

    try {
      // Foydalanuvchi tokenini tekshirish
      // final userToken = await _userSessionManager.getToken();
      final userToken = await tokenPreference.getToken();
      if (userToken != null && userToken.isNotEmpty) {
        emit(const AuthorizedState());
        return;
      }

      // Mehmon tokenini tekshirish
      // final guestToken = await _userSessionManager.getGuestToken();
      final guestToken = await tokenPreference.getGuestToken();
      if (guestToken != null && guestToken.isNotEmpty) {
        emit(const AuthorizedState());
        return;
      }

      // Token mavjud emas, qurilma ma'lumotlarini olish va API chaqiruvini amalga oshirish
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      final deviceModel = androidInfo.model;
      final deviceUuid = androidInfo.id;

      final response = await _api.post(
        path: "/guest/enters",
        body: {
          "uuid": deviceUuid,
          "model": deviceModel,
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);

        if (responseBody['status'] == true) {
          final guestToken = responseBody['token'];
          print("Saving guest token (AppInit): $guestToken");
          await tokenPreference.saveGuestToken(guestToken);
          // await _userSessionManager.saveGuestToken(guestToken);
          emit(const AuthorizedState());
        } else {
          emit(const UnauthorizedState());
        }
      } else {
        emit(const UnauthorizedState());
      }
    } catch (e) {
      print('Error in checkAuth: $e');
      emit(const UnauthorizedState());
    }
  }

  Future<void> loginUser(String username, String password) async {
    try {
      final response = await _api.post(
        path: "/auth/login",
        body: {
          "username": username,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        final userToken = responseBody['token'];

        if (userToken != null) {
          // await _userSessionManager.saveUserToken(userToken);
          await tokenPreference.saveUserToken(userToken);
          print("LOG IN TOKEN SAQLANDI FOR PROFILE");
          emit(const AuthorizedState());
        } else {
          emit(const UnauthorizedState());
        }
      } else {
        emit(const UnauthorizedState());
      }
    } catch (e) {
      print('Error in loginUser: $e');
      emit(const UnauthorizedState());
    }
  }
}
