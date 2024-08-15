import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class BottomSheetHeader extends StatelessWidget {
  const BottomSheetHeader(
      {super.key, required this.title, this.isExitButton = true});
  final String title;
  final bool isExitButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: AppUtils.kPaddingAll16,
          child: Container(
            width: 48,
            height: 4,
            decoration: ShapeDecoration(
              color: FoodColors.cC4C4C4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              title,
              style: Styles.manropeSemiBold18.copyWith(
                color: FoodColors.c0E1923,
              ),
            ),
            const Spacer(),
            if (isExitButton)
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: IconConstants.exitWhite,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
