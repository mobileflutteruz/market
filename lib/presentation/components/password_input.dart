import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/utils/app_layouts.dart';


import '../../../../core/utils/utils.dart';

class PasswordInputWidget extends StatefulWidget {
  final TextEditingController textEditingController;
  final String? title;
  final String? hintText;
  final Function(String?)? validtor;

  PasswordInputWidget({
    Key? key,
    required this.textEditingController,
    this.title = "Parol",
    this.validtor,
    this.hintText = "Parolni kiriting",
  }) : super(key: key);

  @override
  State<PasswordInputWidget> createState() => _PasswordInputWidgetState();
}

class _PasswordInputWidgetState extends State<PasswordInputWidget> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title,
                style: Styles.manropeMedium14.copyWith(
                  color: FoodColors.c0E1923,
                ),
              ),
            ],
          ),
        ),
        AppUtils.kGap6,
        SizedBox(
          // height: 48,
          child: TextFormField(
            keyboardType: TextInputType.text,
            controller: widget.textEditingController,
            enabled: true,
            style: const TextStyle(fontSize: 16),
            cursorColor: FoodColors.c9EB6F0,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Styles.manropeMedium15.copyWith(fontSize: 14),
              iconColor: ColorConstants.cA6AEBF,
              contentPadding: const EdgeInsets.symmetric(horizontal: 1),
              filled: true,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconConstants.lock,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(
                    right: AppLayout.getWidth(16, context),
                    left: AppLayout.getWidth(16, context)),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child:
                      obscureText ? IconConstants.eye : IconConstants.eyeSecure,
                ),
              ),
              prefixIconConstraints: BoxConstraints(
                minHeight: AppLayout.getHeight(32, context),
                minWidth: AppLayout.getWidth(32, context),
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
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: FoodColors.cF83333),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            validator: (value) => widget.validtor??widget.validtor!(value),
          ),
        ),
      ],
    );
  }
}
