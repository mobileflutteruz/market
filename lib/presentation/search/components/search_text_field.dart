
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/constants.dart';

class FoodSearchTextFieldWidget extends StatelessWidget {
  const FoodSearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(40, context),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: IconConstants.search,
          ),
          filled: true,
          fillColor:  FoodColors.cF4F7F8,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
            borderSide: BorderSide(color: Colors.blue),
          ),
          enabledBorder:  OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(4.0),
            ),
            borderSide: BorderSide(
              color: FoodColors.cF4F7F8,
            ),
          ),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
            borderSide: BorderSide(
              width: 1,
              color: FoodColors.c9DB5F0,
            ),
          ),
          hintText:     context.l10n.searchByProduct,
          hintStyle: Styles.manropeMedium14.copyWith(
            color:  FoodColors.c8D909B,
          ),
        ),
      ),
    );
  }
}
