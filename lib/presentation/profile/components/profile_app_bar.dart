import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';

class FoodProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FoodProfileAppBar({super.key, required this.title, this.backOnTap});

  final String title;
  final void Function()? backOnTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: ColorConstants.cffffff,
      surfaceTintColor: ColorConstants.cffffff,
      foregroundColor: ColorConstants.cffffff,
      title: Text(
        title,
        style: Styles.manropeMedium18.copyWith(
          color: ColorConstants.c0E1A23,
        ),
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
