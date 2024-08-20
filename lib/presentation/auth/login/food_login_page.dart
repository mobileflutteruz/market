import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/auth/login/cubit/login_cubit.dart';
import 'package:karmango/presentation/auth/widgets/all_components.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/modal_progress_hud.dart';

class FoodLoginPage extends StatelessWidget {
  const FoodLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginBuildableState) {
            if (state.success == true) {
              // Muvaffaqiyatli login
              AppUtils.msg(context, state.message ?? "Success",
                  color: Colors.green);
              Navigator.pushNamedAndRemoveUntil(
                context,
                FoodNavigatorConst.foodHome,
                (route) => false,
              );
            }

            if (state.failure == true) {
              // Login muvaffaqiyatsiz
              AppUtils.msg(context, state.message ?? "Something went wrong",
                  color: Colors.red);
            }
          }
        },
        child: Buildable<LoginCubit, LoginState, LoginBuildableState>(
          properties: (buildable) => [
            buildable.loading,
            buildable.failure,
            buildable.success,
            buildable.error,
          ],
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state.loading,
              child: const FoodLoginView(),
            );
          },
        ),
      ),
    );
  }
}
