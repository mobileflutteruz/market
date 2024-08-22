import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/presentation/basket/components/basket_cart_item.dart';
import 'package:karmango/presentation/basket/components/basket_components.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:lottie/lottie.dart';

import '../../domain/model/mobile/basket/basket_products.dart';

class FoodBasketView extends StatefulWidget {
  const FoodBasketView({super.key});

  @override
  State<FoodBasketView> createState() => _BasketViewState();
}

class _BasketViewState extends State<FoodBasketView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var cubit = locator<FavouritesCubit>();
        cubit.fetchFavourites();
        return cubit;
      },
      child: BlocListener<FoodBasketCubit, FoodBasketState>(
        listener: (context, state) {
          if (state is FoodBasketBuildableState) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          }
        },
        child: Buildable<FoodBasketCubit, FoodBasketState,
            FoodBasketBuildableState>(
          properties: (buildable) => [
            buildable.failed,
            buildable.loading,
            buildable.success,
            buildable.products,
            // buildable.likeIds,
          ],
          builder: (context, state) {
            if (state.loading &&
                (state.products == null || state.products!.result!.isEmpty)) {
              return const LoaderWidget();
            }
            if (state.failed) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: const FoodBasketAppBarWidget(),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: AppLayout.getScreenWidth(context) / 2,
                        height: AppLayout.getScreenWidth(context) / 2,
                        child: Lottie.asset(
                          "assets/animation/empty_basket.json",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                bottomNavigationBar:
                    FoodBasketBottomBarWidget(currentIndex: state.tabIndex),
              );
            }
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: const FoodBasketAppBarWidget(),
              body: Column(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            final Result? product =
                                state.products?.result?[index];
                            return FoodBasketCartItem(
                              product: [product],
                            );
                          },
                          itemCount: state.products?.result?.length ?? 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              bottomNavigationBar:
                  FoodBasketBottomBarWidget(currentIndex: state.tabIndex),
            );
          },
        ),
      ),
    );
  }
}
