import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/data/api/auth_api.dart';

import 'package:karmango/presentation/components/buildable_cubit.dart';

import '../../../../config/user_session_manager.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@Injectable()
class LoginCubit extends BuildableCubit<LoginState, LoginBuildableState> {
  LoginCubit(this.repo, this.authRepo, this._userSessionManager)
      : super(LoginBuildableState());

  final AuthApi repo;
  final AuthRepository authRepo;
  final UserSessionManager _userSessionManager;

  login({
    required String phone,
    required String password,
  }) async {
    build(
      (buildable) => buildable.copyWith(loading: true, failure: false),
    );
    try {
      await authRepo.login(
        phone: phone,
        password: password,
      );
      build(
        (buildable) => buildable.copyWith(
          success: true,
          loading: false,
          failure: false,
          message: "Successfully",
        ),
      );
    } catch (e) {
      print('error----------------------------------------');
      print(e.toString());
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          message: "Error",
        ),
      );
    }
  }

  Future<void> createGuest(BuildContext context) async {
    build((buildable) =>
        buildable.copyWith(loading: true, failure: false, success: false));
    try {
      await authRepo.loginAsGuest();
      Navigator.pushNamedAndRemoveUntil(
          context, FoodNavigatorConst.foodHome, (route) => false);
      build((buildable) =>
          buildable.copyWith(loading: false, success: true, failure: false));
      debugPrint("SUCCESS createGuest");
    } catch (e) {
      debugPrint("Error in createGuest");
      build((buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            error: e.toString(),
          ));
    }
  }

  Future<void> logout() async {
    try {
      await repo.logOut();
      // Handle logout logic
    } catch (e) {
      // Handle error
    }
  }
}
