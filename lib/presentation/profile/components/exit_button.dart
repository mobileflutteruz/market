import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../core/utils/app_layouts.dart';

class FoodExitButtonWidget extends StatelessWidget {
  const FoodExitButtonWidget({super.key,this.onTap});

  final void Function()? onTap;




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SafeArea(
        child: Container(
          height: 48,
          alignment: Alignment.center,
          decoration: ShapeDecoration(
            color: const Color(0xFFFBEAEA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconConstants.signOut,
              SizedBox(width: AppLayout.getWidth(8, context)),
              Text(
                context.l10n.exit,
                style: Styles.manropeMedium16.copyWith(
                  color: ColorConstants.cF83333,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
