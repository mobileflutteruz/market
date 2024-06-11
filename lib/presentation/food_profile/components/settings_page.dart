
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/presentation/food_profile/cubit/food_profile_cubit.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constants/constants.dart';
import '../../../../config/di/injection.dart';
import '../../components/buildable.dart';
import '../../components/common_app_bar.dart';


class FoodSettingsPage extends StatelessWidget {
  const FoodSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        var cubit = locator<FoodProfileCubit>();
        return cubit;
      },
      child: BlocListener<FoodProfileCubit, FoodProfileState>(
        listener: (context, state) {},
        child: Buildable<FoodProfileCubit, FoodProfileState, FoodProfileBuildableState>(
            properties: (buildable) => [
                  buildable.notificationValue,
                ],
            builder: (context, state) {
              return Scaffold(
                appBar: CommonAppBar(
                  title: context.l10n.settings,
                  backOnTap: () {
                    Navigator.pop(context);
                  },
                ),
                body: Padding(
                  padding: AppUtils.kPaddingAll16,
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 16),
                        decoration:  BoxDecoration(
                          color: FoodColors.cF5F5F8,
                          borderRadius: AppUtils.kBorderRadius8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconConstants.notification,
                            AppUtils.kGap12,
                            Text(
                              context.l10n.notifications,
                              style: Styles.manropeMedium16.copyWith(
                                color: FoodColors.c0E1923
                              ),
                            ),
                            const Spacer(),
                            Transform.scale(
                              scale: .8,
                              child: CupertinoSwitch(
                                value: state.notificationValue,
                                onChanged: (changedValue) {
                                  context
                                      .read<FoodProfileCubit>()
                                      .foodChangeNotificationValue(changedValue);
                                  // setState(() {
                                  //   value = changedValue;
                                  // });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      AppUtils.kGap16,
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, FoodNavigatorConst.foodChangeLanguage);
                        },
                        child: Container(
                          height: 48,
                          width: double.infinity,
                          padding: AppUtils.kPaddingHorizontal16,
                          decoration:  BoxDecoration(
                            color: FoodColors.cF5F5F8,
                            borderRadius: AppUtils.kBorderRadius8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            
                            children: [
                             Row(
                              children: [ 
                                 IconConstants.globe,
                              AppUtils.kGap12,
                              Text(
                                context.l10n.changeLanguage,
                                style: Styles.manropeMedium16.copyWith(
                                  color: FoodColors.c0E1923,
                                ),
                              ),
                              ],
                             ),
                              IconConstants.arrowBackGrey,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
