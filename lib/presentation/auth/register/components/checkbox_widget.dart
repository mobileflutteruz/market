import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/utils.dart';

class FoodCheckBoxWidget extends StatefulWidget {
  const FoodCheckBoxWidget({
    super.key,
  });

  @override
  State<FoodCheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<FoodCheckBoxWidget> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 16,
          width: 16,
          child: Checkbox(
            activeColor: FoodColors.primaryColor,
            side: BorderSide(
              color: FoodColors.c8D909B,
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            value: value,
            onChanged: (onChanged) {
              setState(() {
                value = onChanged;
              });
            },
          ),
        ),
        AppUtils.kGap8,
        Expanded(
          child: Text(
            context.l10n.iAgreeToTheTermsofuse,
            maxLines: 2,
            style: Styles.manropeMedium13.copyWith(
                color: FurnitureColors.c212121, overflow: TextOverflow.visible),
          ),
        ),
      ],
    );
  }
}
