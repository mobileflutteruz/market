// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/core/constants/constants.dart';
// import 'package:karmango/core/extension/context_extension.dart';
// import 'package:karmango/presentation/auth/otp/components/pin_theme.dart';
// import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
// import 'package:pinput/pinput.dart';

// class FoodCustomPin extends StatelessWidget {
//   const FoodCustomPin(
//       {super.key,
//       required this.controller,
//       required this.otpFocusNode,
//       required this.phone});

//    final String phone;
//   final TextEditingController controller;
//   final FocusNode otpFocusNode;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<RegisterCubit, RegisterState>(
//       builder: (context, state) {
//         return foodPin(context);
//       },
//     );
//   }

//   Container foodPin(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Theme.of(context).scaffoldBackgroundColor,
//           borderRadius: const BorderRadius.only(topLeft: Radius.circular(50))),
//       child: Column(children: [
//         RichText(
//           textAlign: TextAlign.center,
//           text: TextSpan(
//               text: context.l10n.weHaveSendAVer,
//               style: Styles.manropeMedium18.copyWith(
//                 color: FoodColors.c000000,
//               ),
//               children: [
//                 TextSpan(
//                   text: context.l10n.codeToYourPhone,
//                   style: Styles.manropeMedium18.copyWith(
//                     color: FurnitureColors.c000000,
//                   ),
//                 ),
//                 TextSpan(
//                   text: "+998 33 030 39 39",
//                   style: TextStyle(
//                     color: FoodColors.cEF233C,
//                     fontWeight: FontWeight.w500,
//                     fontSize: AppSizes.getH(context, .018),
//                   ),
//                 ),
//               ]),
//         ),
//         SizedBox(height: AppSizes.getH(context, .07)),
//         Pinput(
//           onChanged: (v) {
//             if (controller.text.length == 4) {}
//           },
//           autofocus: true,
//           controller: controller,
//           focusNode: otpFocusNode,
//           defaultPinTheme: FoodPinThemes.defaultPinTheme,
//           onCompleted: (pin) {
//             // Future.delayed(const Duration(milliseconds: 500)).then(
//             //   (value) => Navigator.pushNamed(context, NavigatorConst.faqScreen),
//             // );
//           },
//           focusedPinTheme: FoodPinThemes.defaultPinTheme.copyWith(
//             height: AppSizes.getH(context, .066),
//             width: AppSizes.getH(context, .066),
//             // textStyle: ,
//             decoration: FoodPinThemes.defaultPinTheme.decoration!.copyWith(
//               border: Border.all(color: FoodPinThemes.borderColor),
//             ),
//           ),
//           errorPinTheme: FoodPinThemes.defaultPinTheme.copyWith(
//             decoration: BoxDecoration(
//               color: FoodPinThemes.errorColor,
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: AppSizes.getH(context, .03),
//         ),
//         Text(
//           '0:58',
//           style: Styles.manropeMedium13.copyWith(
//             color: FoodColors.c000000,
//           ),
//         ),
//         SizedBox(
//           height: AppSizes.getH(context, .03),
//         ),
//         TextButton(
//           child: Text(
//             context.l10n.resendTheCode,
//             style: Styles.manropeMedium18.copyWith(
//               color: FoodColors.c0057FF,
//             ),
//           ),
//           onPressed: () {},
//         ),
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/auth/otp/components/pin_theme.dart';
import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
import 'package:pinput/pinput.dart';

class FoodCustomPin extends StatelessWidget {
  const FoodCustomPin(
      {super.key,
      required this.controller,
      required this.otpFocusNode,
      required this.phone});

  final String phone;
  final TextEditingController controller;
  final FocusNode otpFocusNode;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      builder: (context, state) {
        return foodPin(context);
      },
    );
  }

  Container foodPin(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(50)),
      ),
      child: Column(
        children: [
          SizedBox(height: height * .07),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: context.l10n.weHaveSendAVer,
              style: Styles.manropeMedium18.copyWith(
                color: FoodColors.c000000,
              ),
              children: [
                TextSpan(
                  text: context.l10n.codeToYourPhone,
                  style: Styles.manropeMedium18.copyWith(
                    color: FurnitureColors.c000000,
                  ),
                ),
                TextSpan(
                  text: phone,
                  style: TextStyle(
                    color: FoodColors.cEF233C,
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.getH(context, .018),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: AppSizes.getH(context, .07)),
          Pinput(
            onChanged: (v) {
              if (controller.text.length == 4) {
                // Add your logic here
              }
            },
            autofocus: true,
            controller: controller,
            focusNode: otpFocusNode,
            defaultPinTheme: FoodPinThemes.defaultPinTheme,
            onCompleted: (pin) {
              Future.delayed(const Duration(milliseconds: 500)).then((value) =>
                  Navigator.pushNamed(
                      context, FoodNavigatorConst.foodFaqScreen));
            },
            focusedPinTheme: FoodPinThemes.defaultPinTheme.copyWith(
              height: AppSizes.getH(context, .066),
              width: AppSizes.getH(context, .066),
              decoration: FoodPinThemes.defaultPinTheme.decoration!.copyWith(
                border: Border.all(color: FoodPinThemes.borderColor),
              ),
            ),
            errorPinTheme: FoodPinThemes.defaultPinTheme.copyWith(
              decoration: BoxDecoration(
                color: FoodPinThemes.errorColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(height: AppSizes.getH(context, .03)),
          Text(
            '0:58',
            style: Styles.manropeMedium13.copyWith(
              color: FoodColors.c000000,
            ),
          ),
          SizedBox(height: AppSizes.getH(context, .03)),
          TextButton(
            child: Text(
              context.l10n.resendTheCode,
              style: Styles.manropeMedium18.copyWith(
                color: FoodColors.c0057FF,
              ),
            ),
            onPressed: () {
              // Add your resend logic here
            },
          ),
        ],
      ),
    );
  }
}
