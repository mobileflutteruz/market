import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';


class NameInputWidget extends StatelessWidget {
  const NameInputWidget({
    super.key,
    // required this.hintText,
    this.textEditingController,
    this.prefixIcon,
      required this.hintText,
    // this.lengthLimiting,
    // this.keyboardType = TextInputType.text,
    // this.textInputFormatters = const [],
    // this.textCapitalization = TextCapitalization.none,
    this.validator,
  });

  // final String hintText;
  final TextEditingController? textEditingController;
  // final TextInputType? keyboardType;
  final Widget? prefixIcon;
  // final int? lengthLimiting;
  // final TextCapitalization textCapitalization;
  // final List<TextInputFormatter> textInputFormatters;
  final String? Function(String?)? validator;
    final String? hintText;

  @override
  Widget build(BuildContext context) {
  
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        
        hintStyle: Styles.manropeMedium15.copyWith(fontSize: 14),
        contentPadding: const EdgeInsets.symmetric(horizontal: 4),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 25,
          minHeight: 25,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            right: 8,
          ),
          child: IconConstants.person
        ),
        filled: true,
        
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: FoodColors.cF83333),
          ),
        fillColor: FoodColors.cFAFAFA,
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
          
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
      ),
      validator: (v) {
        return validator!(v);
      },
    );
  }
}
