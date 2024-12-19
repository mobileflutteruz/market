import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/presentation/basket/components/basket_bottom_bar.dart';
import 'package:karmango/presentation/basket/components/basket_cart_item.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:lottie/lottie.dart';

class FoodBasketPage extends StatefulWidget {
  const FoodBasketPage({super.key});

  @override
  State<FoodBasketPage> createState() => _BasketViewState();
}

class _BasketViewState extends State<FoodBasketPage>
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
      create: (context) => locator<FoodBasketCubit>()..fetchBasketProducts(),
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
            buildable.status,
            buildable.response,
          ],
          builder: (context, buildable) {
         
            final appBar = AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              elevation: 20,
              surfaceTintColor: Colors.white,
              shadowColor: const Color(0x11050505),
              foregroundColor: Colors.white,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.l10n.yourCart,
                    style: Styles.manropeSemiBold18.copyWith(
                      color: FoodColors.c0E1923,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    '${buildable.cardProductIds.length} ${context.l10n.products}',
                    textAlign: TextAlign.right,
                    style: Styles.manropeRegular14.copyWith(
                      color: ColorConstants.c8B96A5,
                    ),
                  ),
                ],
              ),
              centerTitle: false,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16,
                        width: 16,
                        child: Checkbox.adaptive(
                          activeColor: FoodColors.c2473F2,
                          side: BorderSide(color: FoodColors.c8D909B, width: 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: AppUtils.kBorderRadius4,
                          ),
                          value: buildable.isChoosedAll,
                          onChanged: (value) {
                            if (value != null) {
                              final foodBasketCubit =
                                  context.read<FoodBasketCubit>();
                              if (value) {
                                foodBasketCubit
                                    .setSelectIds(buildable.cardProductIds);
                                foodBasketCubit.chooseAllItem(false);
                                setState(() {
                                  print("1");
                                });
                              } else {
                                foodBasketCubit.clearSelectIds(); // С
                                foodBasketCubit.chooseAllItem(true);
                                setState(() {
                                  print("2");
                                });
                              }
                              foodBasketCubit.chooseAllItem(value);
                            }
                          },
                        ),
                      ),
                      AppUtils.kGap8,
                      Expanded(
                        child: Text(
                          context.l10n.chooseAll,
                          style: Styles.manropeRegular14.copyWith(
                            color: buildable.isChoosedAll
                                ? FoodColors.c0E1923
                                : FoodColors.c8B96A5,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: context.read<FoodBasketCubit>().removeAllBasket,
                        child: Text(
                          context.l10n.deleteEverything,
                          style: Styles.manropeRegular14.copyWith(
                            color: buildable.cardProductIds.isEmpty
                                ? FoodColors.c8B96A5
                                : FoodColors.cF83333,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );

            return Scaffold(
              appBar: appBar,
              backgroundColor: Colors.white,
              body: switch (buildable.status) {
                FoodBasketStatus.initial => LoaderWidget(),
                FoodBasketStatus.loading => LoaderWidget(),
                FoodBasketStatus.success => ListView.builder(
                    itemCount: buildable.response?.result?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final product = buildable.response?.result;
                      print("PRODUCT DATAAA: ${product}");

                      return FoodBasketCartItem(
                        products: product,
                        onDeleteTap: (product) => context
                            .read<FoodBasketCubit>()
                            .removeByProductId(product.id!),
                      );
                    },
                  ),
                FoodBasketStatus.failure => Column(
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
              },
              bottomNavigationBar: buildable.status == FoodBasketStatus.success
                  ? FoodBasketBottomBarWidget(
                      currentIndex: buildable.tabIndex,
                      response: buildable.response,
                    )
                  : null,
            );
          },
        ),
      ),
    );
  }
}
