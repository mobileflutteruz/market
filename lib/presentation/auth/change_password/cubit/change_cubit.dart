import 'package:karmango/domain/model/mobile/user/user.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'change_state.dart';
part 'change_cubit.freezed.dart';

@Injectable()
class CHangePasswordCubit
    extends BuildableCubit<CHangePasswordState, CHangePasswordBuildableState> {
  CHangePasswordCubit(this.authRepo)
      : super(const CHangePasswordBuildableState());

  final AuthRepository authRepo;

  final TextEditingController phoneController = TextEditingController();

  Future<void> change({
    required String number,
  }) async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
        failure: false,
      ),
    );
    try {
      await authRepo.forgetPassword(phone: number);
      build(
        (buildable) => buildable.copyWith(
          success: true,
          loading: false,
          failure: false,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          error: e.toString(),
        ),
      );
    }
  }

  resetPassword(String newPass, String confirmPass) async {
    build((buildable) => buildable.copyWith(
        isModal_hud: true, success: false, failure: false, error: null));
    try {
      await authRepo.updatePassword(newPass, confirmPass);
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
          success: true,
        ),
      );
    } catch (e) {
      print("erooorrrrrr--------->");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
          error: e.toString(),
          failure: true,
        ),
      );
    } finally {
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
        ),
      );
    }
  }
  // @override
  // Future<void> close() {
  //   nameController.dispose();
  //   passwordController.dispose();
  //   phoneController.dispose();
  //   return super.close();
  // }
}