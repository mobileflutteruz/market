import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karmango/core/constants/constants.dart';

class FoodSplashView extends StatefulWidget {
  const FoodSplashView({super.key});

  @override
  State<FoodSplashView> createState() => _FoodSplashViewState();
}

class _FoodSplashViewState extends State<FoodSplashView> {



  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: FurnitureColors.transparent),
      child: Scaffold(
        body: Center(
          child: FoodIcons.karmanLogo,
        ),
      ),
    );
  }
}
