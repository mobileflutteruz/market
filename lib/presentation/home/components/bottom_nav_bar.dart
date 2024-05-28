
import 'package:karmango/core/constants/constants.dart';

import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


builtBottomBar() {
  return Buildable<FoodHomeCubit, FoodHomeState,
      FoodHomeBuildableState>(
    properties: (buildable) => [buildable.currentIndex],
    builder: (context, state) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: state.currentIndex,
        backgroundColor: FoodColors.cffffff,
        selectedItemColor: FoodColors.primaryColor,
        unselectedLabelStyle: Styles.manropeMedium12.copyWith(
          color: FoodColors.c8D909B,
        ),
        selectedLabelStyle: Styles.manropeMedium12.copyWith(
          color: FoodColors.primaryColor,
          // letterSpacing: -0.17,
        ),
        elevation: 10,
        onTap: (value) {
          BlocProvider.of<FoodHomeCubit>(context, listen: false)
              .changeTabs(value);
        },
        items: [
          BottomNavigationBarItem(
            icon: state.currentIndex == 0
                ? FoodIcons.foodHomeRed
            // IconConstants.homeSelect
                : FoodIcons.foodHomeGrey,
            label: context.l10n.home,
          ),
          BottomNavigationBarItem(
              icon: state.currentIndex == 1
                  ? FoodIcons.foodCategoryRed
                  : FoodIcons.foodCategoryGrey,
              label: context.l10n.categories),
          BottomNavigationBarItem(
            icon: state.currentIndex == 2
                ? FoodIcons.foodBasketRed
                : FoodIcons.foodBasketGrey,
            label: context.l10n.basket,
          ),
          BottomNavigationBarItem(
            icon: state.currentIndex == 3
                ? IconConstants.heartSelect
                : IconConstants.favourites,
            label: context.l10n.favorites,
          ),
          BottomNavigationBarItem(
            icon: state.currentIndex == 4
                ? FoodIcons.foodProfileRed
                : FoodIcons.foodProfileGrey,
            label: context.l10n.profile,
          ),
        ],
      );
    },
  );
}
