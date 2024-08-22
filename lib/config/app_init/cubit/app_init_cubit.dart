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

  try {
    // Check if a valid token already exists
    final existingToken = await _userSessionManager.getToken();
    if (existingToken != null && existingToken.isNotEmpty) {
      emit(const AuthorizedState());
      return;
    }

    // No valid token, retrieve device information and make API call
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
        await _userSessionManager.saveUserToken(guestToken);
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

}
