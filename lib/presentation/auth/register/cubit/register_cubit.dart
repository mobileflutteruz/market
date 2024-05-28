import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repository/auth_repository.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

@Injectable()
class RegisterCubit
    extends BuildableCubit<RegisterState, RegisterBuildableState> {
  RegisterCubit(this.authRepo) : super(const RegisterBuildableState());
  final AuthRepository authRepo;

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  register() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
        failure: false,
      ),
    );
    try {
      await authRepo.register(
          name: nameController.text,
          phone: phoneController.text,
          password: passwordController.text);
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
    } finally {
      build(
        (buildable) => buildable.copyWith(loading: false),
      );
    }
  }
}
