import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@Injectable()
class LoginCubit extends BuildableCubit<LoginState, LoginBuildableState> {
  LoginCubit(this.repo) : super(LoginBuildableState());
  final AuthRepository repo;

  login({
    required String phone,
    required String password,
  }) async {
    build(
      (buildable) => buildable.copyWith(loading: true, failure: false),
    );
    try {
      await repo.login(
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

  logout() async {}


Future<void> createGuest(BuildContext context) async {
    build((buildable) =>
        buildable.copyWith(loading: true, failure: false, success: false));
    try {
      await repo.loginAsGuest();
      Navigator.pushNamedAndRemoveUntil(
          context, FoodNavigatorConst.foodHome, (route) => false);
      build((buildable) =>
          buildable.copyWith(loading: false, success: true, failure: false));
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true, // Ensure failure is set to true on error
          error: e.toString(), // Capture the error message
        ),
      );
    }
  }
}
