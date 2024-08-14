import 'package:karmango/domain/model/user/user_model.dart';
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

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  Future<void> register() async {
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
        password: passwordController.text,
      );
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

  

  
   logout() async {
    authRepo.logout();
    // emit(const ProfileState.update());
  }

  @override
  Future<void> close() {
    nameController.dispose();
    passwordController.dispose();
    phoneController.dispose();
    return super.close();
  }
}
