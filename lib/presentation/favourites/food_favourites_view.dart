import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/favourites/components/food_info.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/home/components/food_product.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../config/di/injection.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: context.l10n.favorites,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: BlocProvider(
        create: (context) {
          var cubit = locator<FavouritesCubit>();
          cubit.init();
          return cubit;
        },
        child: BlocListener<FavouritesCubit, FavouritesState>(
          listener: (context, state) {},
          child: Buildable<FavouritesCubit, FavouritesState,
              FavouritesBuildableState>(
            properties: (buildable) => [
              buildable.failure,
              buildable.loading,
              buildable.success,
              buildable.favourites,
            ],
            builder: (context, state) {
              if (state.failure) {
                return const Center(
                  child: Text("Something went wrong"),
                );
              }
              if (state.loading) {
                return const LoaderWidget();
              }
              if (state.favourites == null || state.favourites!.isEmpty) {
                return CustomScrollView(
                  slivers: [
                    FoodInfoWidget(favouritesCount: 0),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          AppUtils.kGap40,
                          Lottie.asset(
                            'assets/animation/food_empty.json',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              return CustomScrollView(
                slivers: [
                  FoodInfoWidget(favouritesCount: state.favourites!.length),
                  SliverPadding(
                    padding: AppUtils.kPaddingHorizontal16,
                    sliver: SliverGrid.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount:
                            crossAxisCount == 0 || crossAxisCount == 1
                                ? 2
                                : crossAxisCount,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: .52,
                      ),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 320,
                          child: FoodProductItemWidget(
                            product: state.favourites![index],
                            onTap: () {},
                            likeTapped: () {},
                            isLiked: true,
                            smallButton: () {},
                          ),
                        );
                      },
                      itemCount: state.favourites!.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
