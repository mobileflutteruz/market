import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';

class FoodBasketBottomBarWidget extends StatelessWidget {
  const FoodBasketBottomBarWidget({
    super.key,
    required this.currentIndex,
    required this.product,
  });

  final int currentIndex;
  final List<BasketProducts>? product;

  @override
  Widget build(BuildContext context) {
    return Buildable<FoodBasketCubit, FoodBasketState,
        FoodBasketBuildableState>(
      properties: (buildable) => [
        buildable.failed,
        buildable.loading,
        buildable.success,
        buildable.products,
      ],
      builder: (context, state) {
        // Agar state.products bo'sh bo'lsa yoki currentIndex noto'g'ri bo'lsa, default qiymatlarni ko'rsatamiz
        final totalQuantity = state.products![currentIndex].total_quantity;
        print("TOTAL QUANTITY:${totalQuantity}");
        final totalPayment = state.products![currentIndex].total_payment;
         print("TOTAL PAYMENT:${totalPayment}");

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x11050505),
                    blurRadius: 20,
                    offset: Offset(-4, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$totalQuantity ${context.l10n.products}',
                          style: Styles.manropeMedium12.copyWith(
                            color: const Color(0xFFA6AEBF),
                          ),
                        ),
                        Text(
                          '$totalPayment',
                          style: Styles.manropeBold16.copyWith(
                            color: const Color(0xFF162B4C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          FoodNavigatorConst.foodOrder,
                        );
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: ShapeDecoration(
                          color: FoodColors.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          context.l10n.arrangeAnOrder,
                          textAlign: TextAlign.center,
                          style: Styles.manropeMedium16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
