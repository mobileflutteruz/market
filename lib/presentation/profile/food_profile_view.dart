import 'dart:io';

import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';

import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
import 'package:karmango/presentation/profile/components/exit_button.dart';
import 'package:karmango/presentation/profile/components/my_card_item.dart';
import 'package:karmango/presentation/profile/components/profile_app_bar.dart';
import 'package:karmango/presentation/profile/components/profile_card_item.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/my_order/my_order_page.dart';

import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodProfileView extends StatefulWidget {
  const FoodProfileView({super.key});

  @override
  State<FoodProfileView> createState() => _FoodProfileViewState();
}

class _FoodProfileViewState extends State<FoodProfileView> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<FoodProfileCubit, FoodProfileState>(
      listener: (context, state) {},
      child: Buildable<FoodProfileCubit, FoodProfileState,
              FoodProfileBuildableState>(
          properties: (buildable) => [
                buildable.notificationValue,
                buildable.profileUser,
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
                  Container(
                    padding: AppUtils.kPaddingAll16,
                    color: ColorConstants.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await Navigator.pushNamed(
                              context,
                              FoodNavigatorConst.foodProfileEdit,
                            ).then((value) {
                              if (value != null) {
                                UserModel? user = value as UserModel;
                                context
                                    .read<FoodProfileCubit>()
                                    .foodSetUser(user);
                              }
                            });
                          },
                          child: foodUser == null
                              ? Container(
                                  padding: AppUtils.kPaddingHor16Ver20,
                                  decoration: ShapeDecoration(
                                    color: FoodColors.cF6F6F6,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        context.l10n.signIn,
                                        style:
                                            Styles.manropeSemiBold20.copyWith(
                                          color: FoodColors.c0E1A23,
                                        ),
                                      ),
                                      AppUtils.kGap8,
                                      Text(
                                        context.l10n.by_logging_in,
                                        style: Styles.manropeMedium14.copyWith(
                                          overflow: TextOverflow.visible,
                                          color: FoodColors.c909090,
                                        ),
                                      ),
                                      AppUtils.kGap16,
                                      Container(
                                        padding: AppUtils.kPaddingVertical8,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          color: FoodColors.primaryColor,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius:
                                                AppUtils.kBorderRadius8,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context,
                                                FoodNavigatorConst
                                                    .foodProfileEdit);
                                          },
                                          child: Text(
                                            context.l10n.signIn,
                                            style: Styles.manropeSemiBold16
                                                .copyWith(
                                              color: FoodColors.cffffff,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : Row(
                                  children: [
                                    Container(
                                      width: 56,
                                      height: 56,
                                      decoration: ShapeDecoration(
                                        color: FoodColors.cF5F5F5,
                                        image: foodUser!.image != null
                                            ? DecorationImage(
                                                image: FileImage(
                                                  File(foodUser!.image!),
                                                ),
                                                fit: BoxFit.fill,
                                              )
                                            : null,
                                        shape: const OvalBorder(),
                                      ),
                                      child: foodUser!.image == null
                                          ? Padding(
                                              padding: AppUtils.kPaddingAll12,
                                              child: IconConstants.user,
                                            )
                                          : null,
                                    ),
                                    AppUtils.kGap10,
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          foodUser?.name ??
                                              context.l10n.whats_your_name,
                                          style: Styles.interMedium16.copyWith(
                                            color: FoodColors.c0E1A23,
                                          ),
                                        ),
                                        AppUtils.kGap4,
                                        Text(
                                          foodUser?.phoneNumber ?? "",
                                          style: Styles.interRegular12.copyWith(
                                            color: FoodColors.c8D909B,
                                          ),
                                        ),
                                        AppUtils.kGap16,
                                        foodUser?.cards == null
                                            ? FoodProfileCardWidget(
                                                isProfileCard: true,
                                                balance:
                                                    "${foodUser?.cards.first.balance} UZS",
                                                cardNumber:
                                                    "${foodUser?.cards.first.cardNumber}",
                                                cardData:
                                                    "${foodUser?.cards.first.expirationMonth}/${foodUser?.cards.first.expirationYear}",
                                              )
                                            : Container(),
                                      ],
                                    )
                                  ],
                                ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: AppUtils.kPaddingHorizontal16,
                        child: Column(
                          children: [
                            FoodProfileCardItemWidget(
                                icon: IconConstants.myOrder,
                                text: context.l10n.myOrder,
                                onTap: () {
                                  //!MyOrer
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const FoodMyOrderPage(),
                                    ),
                                  );
                                }),
                            FoodProfileCardItemWidget(
                              icon: IconConstants.myCard,
                              text: context.l10n.myCards,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodProfileCard,
                                );
                              },
                            ),
                            FoodProfileCardItemWidget(
                              icon: IconConstants.location,
                              text: context.l10n.ourBranches,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodEmptyLocationPage,
                                );
                              },
                            ),
                            FoodProfileCardItemWidget(
                              icon: IconConstants.setting,
                              text: context.l10n.settings,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodSettings,
                                );
                              },
                            ),
                            FoodProfileCardItemWidget(
                              icon: IconConstants.phone,
                              text: context.l10n.contactUs,
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  FoodNavigatorConst.foodConnectWithUs,
                                );
                              },
                            ),
                            FoodProfileCardItemWidget(
                              icon: IconConstants.category,
                              text: context.l10n.aboutTheApplication,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, FoodNavigatorConst.foodAbout);
                              },
                            ),
                            AppUtils.kGap16,
                            FoodExitButtonWidget(
                              onTap: () => showCustomDialog(context),
                            ),
                            AppUtils.kGap16,
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
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
          textAlign: TextAlign.start,
          text: TextSpan(
            text: context.l10n.doYouWantToExit,
            // text: 'Siz ushbu ilovadan chiqishni \n',
            style: Styles.manropeSemiBold16.copyWith(
              color: FoodColors.c0E1A23,
            ),
            children: [
              TextSpan(
                // text: 'xoxlaysizmi ?',
                style: Styles.manropeSemiBold16.copyWith(
                  color: FoodColors.c0E1A23,
                ),
              ),
            ],
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
              context.read<RegisterCubit>().logout();
              Navigator.pop(context);
              Navigator.pushNamedAndRemoveUntil(
                context,
                FoodNavigatorConst.foodLoginScreen,
                (route) => false,
              );
              // Add your logic for the OK button here
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
