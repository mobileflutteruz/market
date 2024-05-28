

import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:pinput/pinput.dart';

class FoodPinThemes {
  static final borderColor =  FoodColors.cB3DCD3;
  static final errorColor = FoodColors.cF83333;
  static final fillColor = FoodColors.cFAFAFA;
  
  static final defaultPinTheme = PinTheme(
    width: 48,
    height: 48,
    textStyle:  TextStyle(
     
      color: FoodColors.c000000,
    ),
    decoration: BoxDecoration(
      color: FoodColors.cFAFAFA,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: FoodColors.transparent),
    ),
  );
}
