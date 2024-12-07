import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';

class FoodEmptyNotificationWidget extends StatelessWidget {
  const FoodEmptyNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.notifications,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                FoodImages.emptyNotify,
              ),
              AppUtils.kGap32,
              Text(
                "У вас еще нет активного адреса",
                textAlign: TextAlign.center,
                style: Styles.manropeSemiBold18
                    .copyWith(color: FoodColors.c0E1923),
              ),
              AppUtils.kGap12,
              Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                  style: Styles.manropeRegular13
                      .copyWith(color: FoodColors.c7C8A9D),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.visible)
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
            padding: AppUtils.kPaddingAll16,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: SizedBox(
                height: 50,
                child: DecoratedBox(
                  decoration: ShapeDecoration(
                    color: FoodColors.primaryColor,
                    shape: const RoundedRectangleBorder(
                      borderRadius: AppUtils.kBorderRadius8,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(context.l10n.toMain,
                          textAlign: TextAlign.center,
                          style: Styles.manropeMedium16
                              .copyWith(color: FoodColors.cffffff)),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
