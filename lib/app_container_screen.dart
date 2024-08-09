import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/presentation/auth/login/food_login_page.dart';
import 'package:karmango/presentation/auth/splash/food_splash_view.dart';
import 'package:karmango/presentation/home/food_home_page.dart';
import 'package:karmango/config/app_init/cubit/app_init_cubit.dart';
import 'package:karmango/config/app_init/cubit/app_init_state.dart';

class AppContainerScreen extends StatelessWidget {
  const AppContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppInitCubit, AppInitState>(
      listener: _onAuthStateChanged,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            final appInitCubit = context.read<AppInitCubit>();
            final state = appInitCubit.state;
            if (state is AppInitLoadingState) {
              return const FoodSplashView();
            } else if (state is AuthorizedState) {
              return const FoodHomePage();
            } else if (state is UnauthorizedState) {
              return const FoodLoginPage();
            } else {
              return Container(); // Fallback in case of unexpected state
            }
          },
        ),
      ),
    );
  }

  void _onAuthStateChanged(BuildContext context, AppInitState state) {
    final navigator = Navigator.of(context);

    if (state is AppInitLoadingState) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const FoodSplashView()),
        (route) => false,
      );
    } else if (state is AuthorizedState) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const FoodHomePage()),
        (route) => false,
      );
    } else if (state is UnauthorizedState) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const FoodLoginPage()),
        (route) => false,
      );
    }
  }
}
