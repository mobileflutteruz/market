
import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';


class CustomColorButton extends StatelessWidget {
  const CustomColorButton(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.title,
      required this.onTap,
      required this.textColor});

  final double width;
  final double height;
  final Color color;
  final String title;
  final VoidCallback onTap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width * .9,
        height: height * .062,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: AppSizes.getH(context, 0.02),
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
