import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';

import '../components/contact_container.dart';

class FoodContactUsPage extends StatelessWidget {
  FoodContactUsPage({super.key});

  Map<Widget, List> myData = {
    FurnitureIcons.callingGreen: [
      "+99891 001 23 45",
      Uri.parse("tel: +998910012345"),
    ],
    FurnitureIcons.telegram: [
      "Telegram",
      Uri.parse("https://t.me/dukan_platform"),
    ],
    FurnitureIcons.veb: [
      "Vebsayt",
      Uri.parse("https://dukan.uz/"),
    ],
    FurnitureIcons.instgram: [
      "Instagram",
      Uri.parse("https://www.instagram.com/dukan_platform/")
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.contactUs,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.ifyouHaveAnyQuestions,
              style: Styles.manropeSemiBold16.copyWith(
                color: FurnitureColors.c0E1923,
              ),
            ),
            AppUtils.kGap8,
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  simply dummy.',
              style: Styles.manropeRegular12.copyWith(
                  color: FurnitureColors.c7C8A9D,
                  overflow: TextOverflow.visible),
            ),
            AppUtils.kGap24,
            ...List.generate(
              myData.length,
              (index) {
                return FoodContactContainer(
                  icon: myData.keys.toList()[index],
                  text: myData.values.toList()[index][0],
                  onTap: () async {
                    return await AppLauncher.launchInBrowser(
                        myData.values.toList()[index][1]);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
