import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodNotificationItemPage extends StatelessWidget {
  const FoodNotificationItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.notifications,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: AppUtils.kPaddingHor16Ver20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Эксклюзивной скидкой 40%',
              style: Styles.manropeSemiBold20.copyWith(),
            ),
            AppUtils.kGap12,
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  ",
              style: Styles.manropeRegular14.copyWith(
                  overflow: TextOverflow.visible, color: FoodColors.c8B96A5),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Image.asset(
                FoodImages.skidka,
              ),
            ),
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.  ",
              style: Styles.manropeRegular14.copyWith(
                  overflow: TextOverflow.visible, color: FoodColors.c8B96A5),
            ),
          ],
        ),
      ),
    );
  }
}
