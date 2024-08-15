import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class FoodPhoneCallItemWidget extends StatelessWidget {
  const FoodPhoneCallItemWidget({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppLauncher.makePhoneCall(phoneNumber);
      },
      child: Container(
        width: double.infinity,
        height: 68,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: ShapeDecoration(
          color: const Color(0xFFF8F8F8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconConstants.callingRed,
            AppUtils.kGap16,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.l10n.phoneNumber,
                  style: Styles.manropeRegular12.copyWith(
                    color: const Color(0xFF8B96A5),
                  ),
                ),
                AppUtils.kGap2,
                Text(
                  phoneNumber,
                  style: Styles.manropeSemiBold16.copyWith(
                    color: const Color(0xFF0E1923),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
