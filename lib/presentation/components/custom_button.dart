
import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: width * .9,
        height: height * .06,
        decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            // ColorConstants.linearGradientBlue1,
            // ColorConstants.linearGradientBlue2
          ]),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorConstants.white,
            ),
          ),
        ),
      ),
    );
  }
}
