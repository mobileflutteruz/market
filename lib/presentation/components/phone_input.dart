import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';



class PhoneInputWidget extends StatelessWidget {
  PhoneInputWidget({
    super.key,
    required this.hintText,
    // required this.icon,
    required this.textEditingController,
    required this.validator,
  });

  String hintText;
  // String icon;
  TextEditingController textEditingController;
  Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: TextInputType.number,
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
          child: IconConstants.phone
        ),
        filled: true,
        
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.cF83333),
          ),
        fillColor: ColorConstants.cFAFAFA,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.cFAFAFA),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            // borderSide: const BorderSide(color: KColors.gray300),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.c9EB6F0),
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
