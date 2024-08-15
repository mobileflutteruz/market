import 'package:karmango/core/constants/constants.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class NotificationWidgetItem extends StatelessWidget {
  String titleTop;
  String middleText;
  String subtitle;
  Color circleColor;
  SvgPicture circleIcon;
  void Function()? onTap;
  bool? istoday;
  NotificationWidgetItem({
    super.key,
    required this.istoday,
    this.titleTop = "",
    this.onTap,
    required this.middleText,
    required this.subtitle,
    required this.circleColor,
    required this.circleIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          istoday == true
              ? Text(
                  titleTop,
                  style: Styles.manropeSemiBold16.copyWith(),
                )
              : const SizedBox(),
          AppUtils.kGap16,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: circleColor,
                  child: circleIcon,
                ),
              ),
              AppUtils.kGap16,
              Flexible(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppUtils.kGap2,
                    Text(
                      middleText,
                      style: Styles.manropeSemiBold16.copyWith(),
                    ),
                    Text(
                      '12:35',
                      style: Styles.manropeSemiBold16
                          .copyWith(color: FoodColors.c8B96A5),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      subtitle,
                      style: Styles.manropeSemiBold16.copyWith(
                        color: FoodColors.c8B96A5,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
          AppUtils.kGap16,
          AppUtils.kDivider,
        ],
      ),
    );
  }
}
