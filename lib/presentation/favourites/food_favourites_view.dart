import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:karmango/presentation/favourites/components/food_info.dart';
import 'package:karmango/presentation/favourites/components/food_product.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:lottie/lottie.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/utils/app_layouts.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount = (AppLayout.getScreenWidth(context) / 187.5).floor();

    return BlocProvider(
      create: (context) {
        var cubit = locator<FavouritesCubit>();
        cubit.fetchFavourites();
        return cubit;
      },
      child: BlocListener<FavouritesCubit, FavouritesState>(
        listener: (context, state) {
          // if (state as FavouritesBuildableState ) {
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     const SnackBar(content: Text('Failed to update favourite status')),
          //   );
          // }
        },
        child: Buildable<FavouritesCubit, FavouritesState,
            FavouritesBuildableState>(
          properties: (buildable) => [
            buildable.failure,
            buildable.loading,
            buildable.success,
            buildable.favourites,
            buildable.likeIds,
          ],
          builder: (context, state) {
            if (state.failure) {
              return const Center(
                child: Text("Something went wrong"),
              );
            }
            if (state.loading &&
                (state.favourites == null ||
                    state.favourites!.result!.isEmpty)) {
              return const LoaderWidget();
            }
            if (state.favourites == null || state.favourites!.result!.isEmpty) {
              return Scaffold(
                body: CustomScrollView(
                  slivers: [
                    const FoodInfoWidget(favouritesCount: 0),
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
                ),
              );
            }
            return Scaffold(
              appBar: CommonAppBar(title: context.l10n.favorites),
              body: CustomScrollView(
                slivers: [
                  FoodInfoWidget(
                      favouritesCount: state.favourites!.result!.length),
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
                        final product = state.favourites!.result![index];
                        return FoodFavoriteItemWidget(
                          productList: [product],
                          onTap: () {},
                          likeTapped: () {
                            // context.read<FavouritesCubit>().setLikeId(product!.id!);
                            // context.read<FavouritesCubit>().removeFavouriteFromUI(product.id!.toString());
                            context
                                .read<DetailsCubit>()
                                .setLikeId(product!.id!);
                          },
                          isLiked: state.likeIds.contains(product!.id!),
                          smallButton: () {},
                        );
                      },
                      itemCount: state.favourites!.result!.length,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
