
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';


class ElevatedButtonWidget extends StatelessWidget {
   ElevatedButtonWidget({
    super.key,
    required this.title,required this.height,required this.onPress,required this.width,
    required this.titleColor,
    required this.color,this.fontWieght,this.fnsize
  });
  var onPress;
  String title;
  var height;
  var width;
  Color color;
  Color titleColor;
  var fontWieght;
var fnsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPress,

      child: Container(
        height: height,
       padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color:color,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Text(
          title,

          style: TextStyle(
              fontSize: fnsize??AppSizes.getH(context, 0.020),
              fontWeight:fontWieght ?? FontWeight.w700,
              color: titleColor,),
        ),
      ),
    );
  }
}
