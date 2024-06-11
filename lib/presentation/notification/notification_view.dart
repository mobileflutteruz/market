

import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/presentation/notification/components/notification_item_widget.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';


class FoodNotificationView extends StatelessWidget {
  const FoodNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.notifications,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationWidgetItem(
                istoday: true,
                titleTop: "Сегодня",
                middleText: "Эксклюзивной скидкой 40%",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                circleColor: FoodColors.cF69F1E,
                circleIcon: FoodIcons.skidka,
                onTap: () {
                  Navigator.pushNamed(context, FoodNavigatorConst.foodNotifyItemPage);
                },
              ),
              NotificationWidgetItem(
                istoday: true,
                titleTop: "15.11.2023",
                middleText: "Заказ уже прибыл",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                circleColor: FoodColors.cEF233C,
                circleIcon: FoodIcons.carWhite,
              ),
              NotificationWidgetItem(
                istoday: false,
                middleText: "Успешный заказ",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                circleColor: FoodColors.c8047C6,
                circleIcon: FoodIcons.zakaz,
              ),
              NotificationWidgetItem(
                istoday: true,
                titleTop: "25.10.2023",
                middleText: "Адрес обновлен",
                subtitle:
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                circleColor: FoodColors.c00B6AA,
                circleIcon: FoodIcons.skidka,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
