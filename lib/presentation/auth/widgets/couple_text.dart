import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';

class FoodCoupleTextWidget extends StatelessWidget {
  const FoodCoupleTextWidget({super.key, this.onTap, this.text = " Kirish"});
  final void Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: context.l10n.dontHaveAnAccount,
              style: Styles.manropeMedium15.copyWith(
                color: FoodColors.c212121,
              ),
            ),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = onTap,
              text: text,
              style: Styles.manropeMedium15.copyWith(
                color: FoodColors.primaryColor,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
