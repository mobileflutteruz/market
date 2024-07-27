import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/app_layouts.dart';

class InputWidget extends StatelessWidget {
   InputWidget({
    super.key,
    required this.hintText,
    this.textEditingController,
    this.prefixIcon,
    this.onChanged,
    this.lengthLimiting,
    this.keyboardType = TextInputType.text,
    this.textInputFormatters = const [],
    this.textCapitalization = TextCapitalization.none,
    this.validator,
  });
  void Function(String)? onChanged;
  final String hintText;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final int? lengthLimiting;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter> textInputFormatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppLayout.getHeight(65, context),
      child: TextFormField(
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        controller: textEditingController,
        enabled: true,

        inputFormatters: [],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "This field is required";
          }
          return null;
        },
        style: Styles.manropeMedium16.copyWith(color: FoodColors.c000000),

        cursorColor: FoodColors.c9EB6F0,
        // inputFormatters: [
        //   ...textInputFormatters,
        //   if (lengthLimiting != null)
        //     LengthLimitingTextInputFormatter(lengthLimiting),
        // ],
        onChanged: onChanged,
        decoration: InputDecoration(
          // errorText: "adfa",

          hintText: hintText,
          hintStyle: Styles.manropeMedium16.copyWith(color: FoodColors.cA6AEBF),
          iconColor: FoodColors.cA6AEBF,
          filled: true,

          // prefixText: "+998 ",
          prefixStyle:
              Styles.manropeMedium16.copyWith(color: FoodColors.c000000),
          prefixIcon: prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 8, bottom: 16, top: 16),
                  child: prefixIcon,
                )
              : null,

          prefixIconConstraints: BoxConstraints(
            minHeight: AppLayout.getHeight(32, context),
            minWidth: AppLayout.getWidth(32, context),
          ),
          fillColor: ColorConstants.cFAFAFA,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: FoodColors.cFAFAFA),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: const BorderSide(color: KColors.gray300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: FoodColors.c9EB6F0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: FoodColors.cF83333),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
