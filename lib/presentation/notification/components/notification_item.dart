import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class FoodNotificationItemWidget extends StatelessWidget {
  const FoodNotificationItemWidget({
    super.key,
    required this.title,
    required this.description,
    required this.time,
  });

  final String title;
  final String description;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppUtils.kGap16,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: FoodColors.cF69F1E,
                shape: const OvalBorder(),
              ),
              child: IconConstants.location,
            ),
            AppUtils.kGap16,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.manropeSemiBold16.copyWith(
                      color: FoodColors.c0E1923,
                      letterSpacing: -0.24,
                    ),
                  ),
                  AppUtils.kGap2,
                  Text(time,
                      style: Styles.manropeMedium13
                          .copyWith(color: FoodColors.c8B96A5, height: 1.11)),
                  AppUtils.kGap8,
                  Text(
                    description,
                    style: Styles.manropeRegular14.copyWith(
                      color: FoodColors.c8B96A5,
                      height: 1.11,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            IconConstants.more,
          ],
        ),
        AppUtils.kGap8,
        Divider(
          color: FoodColors.cEEEEEE,
        ),
        AppUtils.kGap16,
      ],
    );
  }
}
