

import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/presentation/auth/widgets/common_food_button.dart';

import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

import '../cubit/food_profile_cubit.dart';
import 'my_card_item.dart';

class FoodProfileCardPage extends StatelessWidget {
  const FoodProfileCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Buildable<FoodProfileCubit, FoodProfileState, FoodProfileBuildableState>(
        properties: (buildable) => [buildable.profileUser],
        builder: (context, state) {
          return Scaffold(
            appBar: CommonAppBar(
              title: context.l10n.myCards,
              backOnTap: () {
                Navigator.pop(context);
              },
            ),
            body: Padding(
              padding: AppUtils.kPaddingHorizontal16,
              child: state.profileUser != null &&
                      state.profileUser!.cards.isNotEmpty
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          ...List.generate(
                            state.profileUser!.cards.length,
                            (index) =>  const FoodProfileCardWidget(
                              balance: "4 555 457.00 UZS" ,
                              cardNumber: "8600 **** **** **70",
                              cardData: "12/26",
                            ),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconConstants.cards,
                        AppUtils.kGap32,
                        Text(
                          context.l10n.cardNotAdded,
                          textAlign: TextAlign.center,
                          style: Styles.manropeSemiBold18.copyWith(
                            color: FoodColors.c0E1A23,
                          ),
                        ),
                        AppUtils.kGap12,
                        Text(
                          "Lorem  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text",
                          textAlign: TextAlign.center,
                          style: Styles.manropeRegular14.copyWith(
                              color: FoodColors.c7C8A9D,
                              overflow: TextOverflow.visible),
                        ),
                      ],
                    ),
            ),
            bottomNavigationBar: Padding(
              padding: AppUtils.kPaddingHorizontal16,
              child: CommonFoodButtonWidget(

                title: context.l10n.addACard,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    FoodNavigatorConst.foodProfileAddCardPage,
                  );
                },
              ),
            ),
          );
        });
  }
}
