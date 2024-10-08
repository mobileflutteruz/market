import 'package:karmango/core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({
    super.key,
    this.onTap,
    required this.title,
    this.isFurniture = false,
  });

  final String title;
  final bool isFurniture;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 48,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: isFurniture ? FoodColors.cE8A842 : FoodColors.c2472F2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Styles.manropeSemiBold15
                    .copyWith(color: FoodColors.cffffff),
              ),
            ),
            // Platform.isIOS ? AppUtils.kGap :
            AppUtils.kGap8,
          ],
        ),
      ),
    );
  }
}
