import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/presentation/profile/components/elevated_button_widget.dart';


class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.cancel,
    required this.ontap,
  });
  final Function ontap;
  final Function cancel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: AppSizes.getH(context, 0.06),
              left: AppSizes.getH(context, 0.06),
              right: AppSizes.getH(context, 0.06),
            ),
            child: SizedBox(
              height: AppSizes.getH(context, 0.25),
              child: Image.asset("assets/images/error.png"),
            ),
          ),
          // AppUtils.kPaddingHor12Ver8(),
             AppUtils.gap16,
          
          Text(
            "Нет подключподключения к сети",
            style: TextStyle(
                fontSize: AppSizes.getH(context, 0.018),
                fontWeight: FontWeight.w600, color: Colors.black),
          ),
          AppUtils.gap16,
          
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.getH(context, 0.02),
            ),
            child: Text(
              "Пожалуйста, проверите свой Интернет или перезагрузите эту страницстраницу  ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: AppSizes.getH(context, 0.014),
                  fontWeight: FontWeight.w400),
            ),
          ),
           AppUtils.gap16,
        
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.getH(context, 0.045),
            ),
            child: ElevatedButtonWidget(
                title: "Перезагрузить страницу",
                height: AppSizes.getH(context, 0.05),
                onPress: () {
                  ontap();
                },
                width: double.infinity,
                titleColor: ColorConstants.white,
                color: ColorConstants.blue100),
          ),
           AppUtils.gap16,
         
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.getH(context, 0.045),
            ),
            child: ElevatedButtonWidget(
              title: "Отменить",
              height: AppSizes.getH(context, 0.05),
              onPress: () {
                cancel();
              },
              width: double.infinity,
              titleColor: ColorConstants.blue100,
              color: ColorConstants.white,
            ),
          ),
        ],
      ),
    );
  }
}
