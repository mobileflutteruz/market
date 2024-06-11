import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/navigator_const.dart';

class FoodHomeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const FoodHomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      
      title: FoodIcons.karmanLogoMini,
     
      backgroundColor: FoodColors.cffffff,
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: GestureDetector(
            onTap: () => {
             Navigator.pushNamed(context,  FoodNavigatorConst.foodNotification)
            },
            child: IconConstants.bellIcon,
          ),
        ),
      ],
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
