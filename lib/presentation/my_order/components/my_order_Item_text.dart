import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';

class FoodMyOrderItemText extends StatelessWidget {
  FoodMyOrderItemText({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);
  final String text;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.manropeMedium16,
            ),
            IconConstants.rightBackArrow,
          ],
        ),
      ),
    );
  }
}
