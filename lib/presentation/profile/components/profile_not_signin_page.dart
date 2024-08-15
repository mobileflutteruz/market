import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/profile/components/profile_app_bar.dart';
import 'package:karmango/presentation/profile/components/profile_card_item.dart';
import 'package:karmango/presentation/components/custom_color_button.dart';

import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfileNotSignInPage extends StatefulWidget {
  const ProfileNotSignInPage({super.key});

  @override
  State<ProfileNotSignInPage> createState() => _FoodProfileNotSignInPageState();
}

class _FoodProfileNotSignInPageState extends State<ProfileNotSignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FoodColors.cffffff,
      appBar: FoodProfileAppBar(
        title: context.l10n.profile,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: AppLayout.getHeight(180, context),
              width: AppLayout.getWidth(343, context),
              padding: AppUtils.kPaddingHor16Ver20,
              margin: AppUtils.kPaddingOnlyBtm16,
              decoration: BoxDecoration(
                  borderRadius: AppUtils.kBorderRadius8,
                  color: FoodColors.cF8F8F8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.signIn,
                    style: Styles.manropeSemiBold20.copyWith(
                      color: FoodColors.c0E1A23,
                    ),
                  ),
                  Text(
                    context.l10n.doYouWantToExit,
                    style: Styles.manropeMedium14.copyWith(
                      color: FoodColors.c0E1A23,
                    ),
                  ),
                  _customButton(
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              width: AppLayout.getScreenWidth(context),
              height: AppLayout.getScreenHeight(context),
              color: FoodColors.cF6F6F6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FoodProfileCardItemWidget(
                      icon: IconConstants.heart,
                      text: context.l10n.favorites,
                      onTap: () {}),
                  FoodProfileCardItemWidget(
                      icon: IconConstants.location,
                      text: context.l10n.ourBranches,
                      onTap: () {}),
                  FoodProfileCardItemWidget(
                      icon: IconConstants.setting,
                      text: context.l10n.settings,
                      onTap: () {}),
                  FoodProfileCardItemWidget(
                      icon: IconConstants.phone,
                      text: context.l10n.contactUs,
                      onTap: () {}),
                  FoodProfileCardItemWidget(
                      icon: IconConstants.category,
                      text: context.l10n.aboutTheApplication,
                      onTap: () {}),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _customButton({required Function() onTap}) {
    return CustomColorButton(
        width: AppSizes.getW(context, 1),
        height: AppSizes.getH(context, 1),
        color: ColorConstants.c2473F2,
        textColor: ColorConstants.cffffff,
        title: 'Войти',
        onTap: onTap);
  }
}
