import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  void Function()? onTap;
  SmallButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppLayout.getHeight(40, context),
        width: AppLayout.getWidth(148, context),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Center(
          child: Text(context.l10n.toTheCart,
              overflow: TextOverflow.ellipsis,
              style: Styles.manropeMedium14.copyWith(
                color: FoodColors.c757F96,
              )),
        ),
      ),
    );
  }
}
