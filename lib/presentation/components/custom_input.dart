
import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
   CustomInput({
    super.key,
    required this.iconPath,
    required this.hintText,
    required this.color,
    required this.controller,
    required this.validator,
  });

  Widget iconPath;
  final String hintText;
  final Color color;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * .9,
      height: height * .07,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: width * .03),
          iconPath,
          SizedBox(
            width: width * .75,
            child: TextFormField(
              controller: controller,
              inputFormatters: <TextInputFormatter>[
                LengthLimitingTextInputFormatter(50),
                // FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]'))
              ],
              style: const TextStyle(fontWeight: FontWeight.w500),
              decoration: InputDecoration(
                hintText: hintText,
                fillColor: ColorConstants.transparent,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              validator: (p0) {
                return validator!(p0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
