import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/mobile/user_info/user_info.dart';

import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/presentation/components/buildable.dart';

import 'package:karmango/presentation/profile/components/exit_button.dart';
import 'package:karmango/presentation/profile/components/my_card_item.dart';
import 'package:karmango/presentation/profile/components/profile_app_bar.dart';
import 'package:karmango/presentation/profile/components/profile_card_item.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/my_order/my_order_page.dart';

class FoodProfileView extends StatefulWidget {
  const FoodProfileView({super.key});

  @override
  State<FoodProfileView> createState() => _FoodProfileViewState();
}

class _FoodProfileViewState extends State<FoodProfileView> {
  @override
  Widget build(BuildContext context) {
    return Buildable<FoodProfileCubit, FoodProfileState,
        FoodProfileBuildableState>(
      properties: (buildable) => [
        buildable.user,
        buildable.userInfo,
        buildable.token,
      ],
      builder: (context, state) {
        return Scaffold(
          backgroundColor: FoodColors.cffffff,
          appBar: FoodProfileAppBar(
            title: context.l10n.profile,
          ),
          body: ListView(
            shrinkWrap: true,
            children: [
              _buildProfileHeader(context, state.user),
              _buildProfileOptions(context),
            ],
          ),
        );
      },
    );
  }

  Widget _buildProfileHeader(BuildContext context, user) {
    final foodUser = context.read<FoodProfileCubit>().foodSetUser(user);
    return Container(
      padding: AppUtils.kPaddingAll16,
      color: FoodColors.cffffff,
      child: GestureDetector(
        onTap: () async {
          if (foodUser == null) {
            Navigator.pushNamed(context, FoodNavigatorConst.foodProfileEdit);
          } else {
            await Navigator.pushNamed(
                    context, FoodNavigatorConst.foodProfileEdit)
                .then((value) {
              if (value != null) {
                context.read<FoodProfileCubit>().foodSetUser(user);
              }
            });
          }
        },
        child: foodUser == null
            ? _buildSignInSection(context)
            : _buildUserProfileSection(context, foodUser),
      ),
    );
  }

  Widget _buildSignInSection(BuildContext context) {
    return Container(
      padding: AppUtils.kPaddingHor16Ver20,
      decoration: ShapeDecoration(
        color: FoodColors.cF6F6F6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.l10n.signIn,
            style: Styles.manropeSemiBold20.copyWith(
              color: FoodColors.c0E1A23,
            ),
          ),
          AppUtils.kGap8,
          Text(
            context.l10n.by_logging_in,
            style: Styles.manropeMedium14.copyWith(
              color: FoodColors.c909090,
            ),
          ),
          AppUtils.kGap16,
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FoodNavigatorConst.foodProfileEdit);
            },
            child: Container(
              padding: AppUtils.kPaddingVertical8,
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                color: FoodColors.primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: AppUtils.kBorderRadius8,
                ),
              ),
              child: Text(
                context.l10n.signIn,
                style: Styles.manropeSemiBold16.copyWith(
                  color: FoodColors.cffffff,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserProfileSection(BuildContext context, UserModel foodUser,) {
    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: ShapeDecoration(
            color: FoodColors.cF5F5F5,
            image: foodUser.image != null
                ? DecorationImage(
                    image: FileImage(File(foodUser.image!)),
                    fit: BoxFit.fill,
                  )
                : null,
            shape: const OvalBorder(),
          ),
          child: foodUser.image == null
              ? Padding(
                  padding: AppUtils.kPaddingAll12,
                  child: IconConstants.user,
                )
              : null,
        ),
        AppUtils.kGap10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              foodUser.name ?? context.l10n.whats_your_name,
              style: Styles.interMedium16.copyWith(
                color: FoodColors.c0E1A23,
              ),
            ),
            AppUtils.kGap4,
            Text(
              foodUser.phoneNumber ?? "",
              style: Styles.interRegular12.copyWith(
                color: FoodColors.c8D909B,
              ),
            ),
            if (foodUser.cards != null) ...[
              AppUtils.kGap16,
              FoodProfileCardWidget(
                isProfileCard: true,
                balance: "${foodUser.cards.first.balance} UZS",
                cardNumber: "${foodUser.cards.first.cardNumber}",
                cardData:
                    "${foodUser.cards.first.expirationMonth}/${foodUser.cards.first.expirationYear}",
              ),
            ],
          ],
        ),
      ],
    );
  }

  Widget _buildProfileOptions(BuildContext context) {
    return Padding(
      padding: AppUtils.kPaddingHorizontal16,
      child: Column(
        children: [
          FoodProfileCardItemWidget(
            icon: IconConstants.myOrder,
            text: context.l10n.myOrder,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const FoodMyOrderPage()));
            },
          ),
          FoodProfileCardItemWidget(
            icon: IconConstants.myCard,
            text: context.l10n.myCards,
            onTap: () {
              Navigator.pushNamed(context, FoodNavigatorConst.foodProfileCard);
            },
          ),
          FoodProfileCardItemWidget(
            icon: IconConstants.setting,
            text: context.l10n.settings,
            onTap: () {
              Navigator.pushNamed(context, FoodNavigatorConst.foodSettings);
            },
          ),
          FoodProfileCardItemWidget(
            icon: IconConstants.phone,
            text: context.l10n.contactUs,
            onTap: () {
              Navigator.pushNamed(
                  context, FoodNavigatorConst.foodConnectWithUs);
            },
          ),
          FoodProfileCardItemWidget(
            icon: IconConstants.category,
            text: context.l10n.aboutTheApplication,
            onTap: () {
              Navigator.pushNamed(context, FoodNavigatorConst.foodAbout);
            },
          ),
          AppUtils.kGap16,
          FoodExitButtonWidget(
            onTap: () => showCustomDialog(context),
          ),
          AppUtils.kGap16,
        ],
      ),
    );
  }

  void showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: FoodColors.cffffff,
        title: CircleAvatar(
          radius: 27,
          backgroundColor: FoodColors.cFFDDDD,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: FoodColors.cF83333,
            child: SizedBox(
              width: 24,
              height: 24,
              child: IconConstants.logoutWhite,
            ),
          ),
        ),
        content: RichText(
          text: TextSpan(
            text: context.l10n.doYouWantToExit,
            style: Styles.manropeSemiBold16.copyWith(
              color: FoodColors.c0E1A23,
            ),
          ),
        ),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: FoodColors.cA6AEBF.withOpacity(.5),
              fixedSize: Size(AppLayout.getWidth(120, context),
                  AppLayout.getHeight(48, context)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              context.l10n.no,
              style: Styles.manropeSemiBold16.copyWith(
                color: FoodColors.c0E1A23,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: FoodColors.primaryColor,
              fixedSize: Size(AppLayout.getWidth(120, context),
                  AppLayout.getHeight(48, context)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              context.read<FoodProfileCubit>().logout();
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(context,
                  FoodNavigatorConst.foodLoginScreen, (route) => false);
            },
            child: Text(
              context.l10n.yes,
              style: Styles.manropeSemiBold16.copyWith(
                color: FoodColors.cffffff,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
