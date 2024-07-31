import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/common_blue_button.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
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
          if (state is FavouritesBuildableState) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            } 
          }
        },
        child: Buildable<FavouritesCubit, FavouritesState, FavouritesBuildableState>(
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
            if (state.loading) {
              return const LoaderWidget();
            }
            if (state.failure) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Image.asset("assets/images/home_error.png"),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'что-то пошло не так',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0E1923),
                        fontSize: 20,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Нет результатов поиска, мы не можем найти товар, который вы ищете.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF7C8A9D),
                        fontSize: 13,
                        fontFamily: 'Manrope',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 32),
                    CommonButtonWidget(
                      title: "Retry",
                      onTap: () {
                        context.read<FavouritesCubit>().fetchFavourites();
                      },
                    ),
                  ],
                ),
              );
            }


            if (state.favourites != null && state.favourites!.result!.isNotEmpty) {
              return Scaffold(
              appBar: CommonAppBar(title: context.l10n.favorites),
              body: CustomScrollView(
                slivers: [
                  FoodInfoWidget(favouritesCount: state.favourites!.result!.length),
                  SliverPadding(
                    padding: AppUtils.kPaddingHorizontal16,
                    sliver: SliverGrid.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount == 0 || crossAxisCount == 1 ? 2 : crossAxisCount,
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
                            context.read<FavouritesCubit>().deleteLikeId(product.product_id!);
                          },
                          isLiked: state.likeIds.contains(product.id!),
                          smallButton: () {},
                        );
                      },
                      itemCount: state.favourites!.result!.length,
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
                    const FoodInfoWidget(favouritesCount: 0),
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          AppUtils.kGap40,
                          Lottie.asset('assets/animation/food_empty.json'),
                        ],
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
