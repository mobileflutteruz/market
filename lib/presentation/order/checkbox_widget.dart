import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../core/utils/utils.dart';

class FoodCheckBoxWidget extends StatefulWidget {
 
   const FoodCheckBoxWidget({
    super.key,
   
  });

  @override
  State<FoodCheckBoxWidget> createState() => _FoodCheckBoxWidgetState();
}

class _FoodCheckBoxWidgetState extends State<FoodCheckBoxWidget> {
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
            checkColor: FoodColors.cffffff,
            side:  BorderSide(
              color:  FoodColors.primaryColor,
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
        Text(
          context.l10n.iAgreeTerms,
          style: Styles.manropeMedium13.copyWith(color: FoodColors.c212121,),
        ),
      ],
    );
  }
}
