import 'dart:convert';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/config/app_init/cubit/app_init_state.dart';
import 'package:karmango/config/user_session_manager.dart';
import 'package:karmango/data/api/api.dart';

@Injectable()
class AppInitCubit extends Cubit<AppInitState> {
  final UserSessionManager _userSessionManager;
  final Api _api;

  AppInitCubit(
    this._userSessionManager,
    this._api,
  ) : super(const AppInitLoadingState());

  Future<void> checkAuth() async {
    emit(const AppInitLoadingState());

    // Qurilma ma'lumotlarini olish
    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final deviceModel = androidInfo.model;

    // Eski 'androidId' o'rniga yangi 'id' xususiyatidan foydalanamiz
    final deviceUuid = androidInfo.id;

    // Backendga qurilma ma'lumotlarini yuborish
    final response = await _api.post(
      path: "/guest/enters",
      body: {
        "uuid": deviceUuid,
        "model": deviceModel,
      },
    );

    // Backenddan token olish va saqlash
    final responseBody = jsonDecode(response.body);
    if (responseBody['status'] == true) {
      final guestToken = responseBody['token'];
      print("Token saqlanmoqda (Guest)APPP INIT: $guestToken");
      await _userSessionManager.saveUserToken(guestToken);
    }

    // Mavjud foydalanuvchini tekshirish
    final loggedIn = await _userSessionManager.isUserLoggedIn();

    if (loggedIn) {
      emit(const AuthorizedState());
    } else {
      emit(const UnauthorizedState());
    }
  }
}
