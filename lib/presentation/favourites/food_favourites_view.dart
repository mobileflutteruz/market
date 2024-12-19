import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
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
        final cubit = locator<FavouritesCubit>();
        cubit.fetchFavourites();
        return cubit;
      },
      child: BlocListener<FavouritesCubit, FavouritesState>(
        listener: (context, state) {
          // if (state is FavouritesBuildableState && state.failure) {
          //   // Hatolik bo'lsa xabar chiqarish
          //   ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text('')),
          //   );
          // }
          // if(state is Error){
          //     ScaffoldMessenger.of(context).showSnackBar(
          //     SnackBar(content: Text('Something went wrong!')),
          //   );
          // }
        },
        child: BlocBuilder<FavouritesCubit, FavouritesState>(
          buildWhen: (previous, current) {
            return previous != current;
          },
          builder: (context, state) {
            if (state is FavouritesBuildableState) {
              if (state.loading) {
                return Stack(
                  children: [
                    _buildMainContent(context, state, crossAxisCount),
                    const LoaderWidget(),
                  ],
                );
              }

              return _buildMainContent(context, state, crossAxisCount);
            }

            return const LoaderWidget();
          },
        ),
      ),
    );
  }

  Widget _buildMainContent(BuildContext context, FavouritesBuildableState state,
      int crossAxisCount) {
    if (state.favourites?.result?.isNotEmpty ?? false) {
      return Scaffold(
        backgroundColor: Colors.white,
        appBar: CommonAppBar(title: context.l10n.favorites),
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: AppUtils.kPaddingHorizontal16,
              sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount.clamp(2, 4),
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: .52,
                ),
                itemBuilder: (context, index) {
                  final product = state.favourites!.result![index];
                  return FoodFavoriteItemWidget(
                      productList: [product],
                      onTap: () {},
                      likeTapped: () async {
                        context
                            .read<FavouritesCubit>()
                            .deleteLikeId(product.product_id!);
                        if (!context.mounted) return;
                        context.read<FavouritesCubit>().fetchFavourites();
                      },
                      isLiked: state.likeIds.contains(product.id!),
                      smallButton: () => context
                          .read<FoodBasketCubit>()
                          .setBasketProducts(product.product_id!));
                },
                itemCount: state.favourites!.result!.length,
              ),
            ),
          ],
        ),
      );
    }

    // Empty state
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(title: context.l10n.favorites),
      body: CustomScrollView(
        slivers: [
          const FoodInfoWidget(favouritesCount: 0),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset('assets/animation/food_empty.json'),
                const SizedBox(height: 20),
                const Text(
                  'Ваши избранные товары отсутствуют',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C8A9D),
                    fontSize: 15,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Добавьте товары в избранное, чтобы быстро находить их здесь.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF7C8A9D),
                    fontSize: 13,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
