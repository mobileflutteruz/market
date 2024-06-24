import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/logger_service.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@Injectable()
class LoginCubit extends BuildableCubit<LoginState, LoginBuildableState> {
  LoginCubit(
    this.repo,
  ) : super(LoginBuildableState());
  final AuthRepository repo;

  login({
    required String phone,
    required String password,
  }) async {
    build(
      (buildable) => buildable.copyWith(loading: true, failure: false),
    );
    try {
      await repo.login(password: password, phone: phone);
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
    // Update UI to show loading state
    build((buildable) =>
        buildable.copyWith(loading: true, failure: false, success: false));

    try {
      // Perform guest login
      await repo.loginAsGuest();

      // Navigate to home page on success
      Navigator.pushNamedAndRemoveUntil(
          context, FoodNavigatorConst.foodHome, (route) => false);

      // Update UI to show success state
      build((buildable) =>
          buildable.copyWith(loading: false, success: true, failure: false));

      debugPrint("SUCCESS createGuest");
    } catch (e) {
      debugPrint("Error in createGuest");

      // Update UI to show failure state and log the error
      build((buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            error: e.toString(),
          ));
    }
  }
}
