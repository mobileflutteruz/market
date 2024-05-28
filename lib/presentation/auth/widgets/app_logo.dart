import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';

class FoodLogoWidget extends StatelessWidget {
  FoodLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight,bottom: 40),
      child: Align(
        alignment: Alignment.center,
        child: FoodIcons.karmanLogo,
      ),
    );
  }
}
