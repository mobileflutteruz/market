import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';


class ChooseAppPage extends StatelessWidget {
  const ChooseAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppUtils.kPaddingHorizontal16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CommonButtonWidget(title: "Electronics App",onTap: ()=>Navigator.pushNamed(context, NavigatorConst.splash),),
            CommonButtonWidget(title: "Furniture App",onTap: ()=>Navigator.pushNamed(context, FurnitureNavigatorConst.furnitureSplash),) ,
            CommonButtonWidget(title: "Food App",onTap: ()=>Navigator.pushNamed(context, FoodNavigatorConst.foodSplash),) ,


        
          ],
        ),
      ),
    );
  }
}
