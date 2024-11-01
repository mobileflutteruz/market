import 'package:karmango/config/user_session_manager.dart';
import 'package:karmango/data/preferences/token_preferences.dart';
import 'package:karmango/domain/model/mobile/user/user.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'change_state.dart';
part 'change_cubit.freezed.dart';

@Injectable()
class ChangePasswordCubit
    extends BuildableCubit<ChangePasswordState, ChangePasswordBuildableState> {
  ChangePasswordCubit(this.authRepo, this.token, this._sessionManager)
      : super(const ChangePasswordBuildableState());

  final AuthRepository authRepo;
  final TokenPreference token;
  final UserSessionManager _sessionManager;
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
        success: false,
        failure: false,
        error: null,
      ),
    );

    try {
      // User ID ni asinxron olish
      final userId = await _sessionManager.getUserId();
      if (userId == null) {
        throw Exception("User ID topilmadi");
      }

      // Parolni o'zgartirishni amalga oshirish
      await authRepo.updatePassword(
          // confirmPassword: confirmPass,
          // password: newPass,
          // userId: userId, // `us/erId` to'g'ridan-to'g'ri qo'shildi
          newPass,
          confirmPass);

      print(
          "------------------------------- SUCCESS -----------------------------");

      // Muvaffaqiyatli amalga oshganligini bildirish
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
          success: true,
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
          error: e.toString(),
          failure: true,
        ),
      );
    } finally {
      // Doim HUD ni o'chirish
      build(
        (buildable) => buildable.copyWith(
          isModal_hud: false,
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
