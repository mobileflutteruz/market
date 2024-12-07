import 'package:karmango/domain/model/mobile/user/user.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../config/token_data_source.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'change_state.dart';
part 'change_cubit.freezed.dart';

@Injectable()
class ChangePasswordCubit
    extends BuildableCubit<ChangePasswordState, ChangePasswordBuildableState> {
  ChangePasswordCubit(this.authRepo, this.token, )
      : super(const ChangePasswordBuildableState());

  final AuthRepository authRepo;
  final TokenPreference token;
  // final UserSessionManager _sessionManager;
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

  Future<void> resetPassword(
    String newPass,
    String confirmPass,
  ) async {
    // HUD va boshqa qiymatlarni yangilash
    build(
      (buildable) => buildable.copyWith(
        isModal_hud: true,
        loading: true,
        success: false,
        failure: false,
        error: null,
      ),
    );

    try {
      // User ID ni asinxron olish
      final userId = await token.getUserId();
      if (userId == null) {
        throw Exception("User ID topilmadi");
      }

      // Parolni o'zgartirishni amalga oshirish
      await authRepo.updatePassword(
       
          newPass,
          confirmPass);

      print(
          "------------------------------- SUCCESS -----------------------------");

      // Muvaffaqiyatli amalga oshganligini bildirish
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
           loading: false,
          success: true,
           failure: false,
        error: null,
        ),
      );
    } catch (e) {
      print(
          "------------------------------- ERROR -----------------------------");
      print("ERROR:$e");

      // Xatolik yuz berganligini bildirish
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
           loading: false,
          error: e.toString(),
          failure: true,
        ),
      );
    } finally {
      // Doim HUD ni o'chirish
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
           loading: false,
        ),
      );
    }
  }

  Future<void> verifySms(String phone, String code) async {
    build(
      (buildable) => buildable.copyWith(loading: true, failure: false),
    );
    try {
      await authRepo.verifySms(phone, code);
      build(
        (buildable) => buildable.copyWith(
          success: true,
          loading: false,
          failure: false,
        ),
      );
    } catch (e) {
      print(
          "------------------------------- ERRROR  VERFY SMS-----------------------------");
      print("ERROR SMS:$e");
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          error: e.toString(),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    phoneController.dispose();
    return super.close();
  }
}
