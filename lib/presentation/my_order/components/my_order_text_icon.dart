// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:karmango/core/constants/constants.dart';

class FoodMyOrderTextIcon extends StatelessWidget {
  String text;
  Color textColor;
  IconData icon;
  Color iconColor;
  Color backgroundColor;

  FoodMyOrderTextIcon({
    Key? key,
    required this.text,
    required this.textColor,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      height: 24,
    
      decoration: ShapeDecoration(
       
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 16,
            clipBehavior: Clip.antiAlias,
            decoration:  const BoxDecoration(),
            child: Icon(
              icon,
              size: 18,
              color: iconColor,
         
            ),
          ),
          const SizedBox(width: 4),
           Text(
            text,
            style: Styles.manropeMedium12.copyWith(
              color: textColor,
              overflow: TextOverflow.ellipsis,
            )
          ),
        ],
      ),
    );
  }
}
