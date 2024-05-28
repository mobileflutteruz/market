import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/product/product_model.dart';
import 'package:karmango/presentation/food_basket/components/basket_cart_item.dart';
import 'package:karmango/presentation/food_basket/components/basket_components.dart';
import 'package:karmango/presentation/food_basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
    return Buildable<FoodBasketCubit, FoodBasketState,
        FoodBasketBuildableState>(
      properties: (buildable) => [
        buildable.tabIndex,
        buildable.cardProducts,
      ],
      builder: (context, state) {
        final List<DemoProductModel> basketProducts = [];
        for (int i = 0; i < allProducts.length; i++) {
          if (state.cardProducts.keys.contains(allProducts[i].id)) {
            basketProducts.add(allProducts[i]);
          }
        }
        return Scaffold(
          //      appBar: CommonAppBar(
          //   title: context.l10n.basket
          // ),

          backgroundColor: Colors.white,
          appBar: const FoodBasketAppBarWidget(),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ...List.generate(
                      1,
                      (index) => basketProducts.isNotEmpty
                          ? ListView.builder(
                              itemBuilder: (BuildContext context, int index) {
                                return FoodBasketCartItem(
                                  product: basketProducts[index],
                                );
                              },
                              itemCount: basketProducts.length,
                            )
                          : Align(
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
    );
  }
}
