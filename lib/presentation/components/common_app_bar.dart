import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key, required this.title, this.backOnTap});

  final String title;
  final void Function()? backOnTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(

      automaticallyImplyLeading: false,
      backgroundColor: FoodColors.cffffff,
      leading: backOnTap != null
          ? GestureDetector(
              onTap: backOnTap,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: IconConstants.leftArrow,
              ),
            )
          : null,
      elevation: 20,
      surfaceTintColor: FoodColors.cffffff,
      shadowColor: const Color(0x111050505),
      foregroundColor: ColorConstants.cffffff,
      title: Text(
        title,
        style: Styles.manropeMedium18.copyWith(
          color:  ColorConstants.c0E1A23,
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
