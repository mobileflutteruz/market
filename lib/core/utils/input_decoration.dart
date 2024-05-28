import 'package:flutter/material.dart';

import '../constants/constants.dart';

class InputBorderr {
  static InputBorder enableBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorConstants.cFAFAFA),
      );

  static InputBorder disabledBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        // borderSide: const BorderSide(color: KColors.gray300),
      );
  static InputBorder focusedBorder(Color color) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorConstants.c9EB6F0),
      );
  static InputBorder errorBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorConstants.cF83333),
      );
  static InputBorder border() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      );
}
