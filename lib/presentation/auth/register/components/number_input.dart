import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
// import 'package:karmango/utils/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NumberInput extends StatefulWidget {
  final String fieldText;
  final Widget iconPath;
  final bool isEnabled;
  TextInputType keyboardType;
  bool obscureText;
  final TextEditingController fieldController;
  String? Function(String?)? validator;

   NumberInput({
    super.key,
    this.fieldText = "",
    required this.iconPath,
    this.isEnabled = true,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.fieldController,
    this.validator,
  });

  @override
  State<NumberInput> createState() => _NumberInputState();
}

class _NumberInputState extends State<NumberInput> {
  @override
  Widget build(BuildContext context) {
    var maskFormatter = MaskTextInputFormatter(
      mask: '## ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return TextFormField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.fieldController,
      enabled: widget.isEnabled,
      cursorColor: FurnitureColors.c9EB6F0,
      // style: TextStyle(
      //   color: ColorConstants.c212121,
      //   fontSize: 14,
      //   fontWeight: FontWeight.w500,
      // ),
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(9),
        maskFormatter
      ],
      decoration: InputDecoration(
        hintText: widget.fieldText,
        hintStyle: Styles.manropeMedium15.copyWith(
          color: FurnitureColors.cA6AEBF,
        ),
        iconColor: FurnitureColors.cA6AEBF,
        filled: true,
        prefixIcon: Padding(
            padding: EdgeInsets.only(
              left: AppLayout.getWidth(16, context),
              right: AppLayout.getWidth(8, context),
            ),
            child: widget.iconPath),
        prefixIconConstraints: BoxConstraints(
            minHeight: AppLayout.getHeight(18, context),
            minWidth: AppLayout.getWidth(18, context)),
        fillColor: FurnitureColors.cFAFAFA,
        // enabledBorder: inputBorder.enableBorder(),
        // focusedBorder: inputBorder.focusedBorder(FurnitureColors.c9EB6F0),
        // errorBorder: inputBorder.errorBorder(),
        // focusedErrorBorder: inputBorder.errorBorder(),
        // disabledBorder: inputBorder.disabledBorder(),
      ),
      validator: widget.validator,
    );
  }
}
