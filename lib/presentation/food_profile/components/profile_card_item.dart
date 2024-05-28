import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodProfileCardItemWidget extends StatelessWidget {
  const FoodProfileCardItemWidget({
    Key? key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final Widget icon;
  final String text;
  final void Function()? onTap;

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
          color: ColorConstants.cF6F6F6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                AppUtils.kGap12,
                Text(
                  text,
                  style: Styles.manropeMedium16,
                ),
              ],
            ),
            IconConstants.rightBackArrow,
          ],
        ),
      ),
    );
  }
}
