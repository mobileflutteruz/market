import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/data/api/auth_api.dart';
import 'package:karmango/data/preferences/token_preferences.dart';
import 'package:karmango/domain/model/auth/auth_resposne/auth_response.dart';
import 'package:karmango/domain/model/mobile/user/user.dart';

import 'package:karmango/presentation/components/buildable_cubit.dart';

import '../../../../domain/repository/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends BuildableCubit<LoginState, LoginBuildableState> {
  LoginCubit(this.repo, this.authRepo, this._preference)
      : super(LoginBuildableState());

  final AuthApi repo;
  final TokenPreference _preference;
  final AuthRepository authRepo;

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
