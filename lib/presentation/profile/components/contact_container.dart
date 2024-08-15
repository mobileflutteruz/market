import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class FoodContactContainer extends StatelessWidget {
  final Widget icon;
  final String text;
  final void Function()? onTap;
  const FoodContactContainer({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppLayout.getHeight(48, context),
        padding: AppUtils.kPaddingHor16,
        margin: AppUtils.kPaddingOnlyTop16,
        decoration: BoxDecoration(
          borderRadius: AppUtils.kBorderRadius8,
          color: FoodColors.cFAFAFA,
        ),
        child: Row(
          children: [
            icon,
            AppUtils.kGap12,
            Text(
              text,
              style: Styles.manropeMedium16,
            ),
          ],
        ),
      ),
    );
  }
}
