
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/domain/model/product/product_model.dart';
import 'package:karmango/presentation/my_order/components/my_order_item.dart';
import 'package:karmango/presentation/my_order/cubit/food_my_order_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodMyOrderView extends StatefulWidget {
  const FoodMyOrderView({super.key});

  @override
  State<FoodMyOrderView> createState() => _FoodMyOrderViewState();
}

class _FoodMyOrderViewState extends State<FoodMyOrderView>
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
    return Buildable<FoodMyOrderCubit, FoodMyOrderState, FoodMyOrderBuildableState>(
        properties: (buildable) => [
              // buildable.tabIndex,
              // buildable.cardProducts,
            ],
        builder: (context, state) {
          final List<DemoProductModel> myOrderProducts = [
            allProducts.first,
            allProducts.last,
          ];
          for (int i = 0; i < allProducts.length; i++) {
            if (state.cardProducts.keys.contains(allProducts[i].id)) {
              myOrderProducts.add(allProducts[i]);
            }
          }
          return Scaffold(
            appBar: CommonAppBar(
              title: context.l10n.myOrder,
              backOnTap: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: FoodColors.cffffff,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  AppUtils.kGap24,
                 
                  ListView.builder(
                    itemCount: myOrderProducts.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return FoodMyOrderCartItem(
                        product: myOrderProducts[index],
                        onTap: () => Navigator.pushNamed(
                          context,
                          FoodNavigatorConst.foodMyOrderCard,
                        ),
                      );
                    },
                  ),
                 
                ],
              ),
            ),
          );
        });
  }
}
