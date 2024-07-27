import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/home/components/bottom_nav_bar.dart';
import 'package:karmango/presentation/home/components/build_home_view.dart';

import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FoodHomePage extends StatelessWidget {
  const FoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<FoodHomeCubit, FoodHomeState>(
        listener: (context, state) {
          
        },
        child: Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
          properties: (buildable) => [
            buildable.error,
            buildable.loading,
            buildable.currentIndex,
            buildable.success
          ],
          builder: (context, state) {
            return buildHomeUi(state.currentIndex);
          },
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: FoodColors.c8D909B.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(0, -3),
            ),
          ],
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: builtBottomBar(),
        ),
      ),
    );
  }
}