import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';

class FoodLocationTextField extends StatelessWidget {
  VoidCallback ontap;
  String hintText;
  FoodLocationTextField({
    super.key,
    required this.ontap,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(48, context),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Padding(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                onPressed: ontap,
                icon: IconConstants.location_red,
              )),
          suffixIconConstraints: BoxConstraints(
              minHeight: AppLayout.getHeight(20, context),
              minWidth: AppLayout.getWidth(20, context)),
          filled: true,
          fillColor: FoodColors.cF6F6F6,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              color: FoodColors.cF4F7F8,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(8.0),
            ),
            borderSide: BorderSide(
              width: 1,
              color: FoodColors.c9EB6F0,
            ),
          ),
          hintText: hintText,
          hintStyle: Styles.manropeMedium14.copyWith(
            color:  FoodColors.c8D909B,
          ),
        ),
      ),
    );
  }
}
