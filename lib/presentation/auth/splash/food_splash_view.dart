import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/presentation/auth/splash/cubit/splash_cubit.dart';
import 'package:karmango/core/constants/constants.dart';

class FoodSplashView extends StatefulWidget {
  const FoodSplashView({super.key});

  @override
  State<FoodSplashView> createState() => _FoodSplashViewState();
}

class _FoodSplashViewState extends State<FoodSplashView> {
  late final SplashCubit _splashCubit;

  @override
  void initState() {
    super.initState();
    _splashCubit = context.read<SplashCubit>();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _splashCubit.checkAndNavigate();
    });
  }

  @override
  void dispose() {
    _splashCubit.close();
    super.dispose();
  }

 void _handleNavigation(SplashState state) {
  if (state.navigateToHome) {
    // Delay navigation to home page by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, FoodNavigatorConst.foodHome);
    });
  } else if (state.navigateToRegister) {
    // Delay navigation to register page by 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, FoodNavigatorConst.foodLoginScreen);
    });
  }
}

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        _handleNavigation(state);
      },
      child: BlocBuilder<SplashCubit, SplashState>(
        builder: (context, state) {
          if (state.loading) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state.failure) {
            return Scaffold(
              body: Center(
                child: Text(state.message ?? 'Error'),
              ),
            );
          }

          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(statusBarColor: FurnitureColors.transparent),
            child: Scaffold(
              body: Center(
                child: FoodIcons.karmanLogo,
              ),
            ),
          );
        },
      ),
    );
  }
}
