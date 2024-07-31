import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/basket/components/basket_components.dart';

import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart' as basket;

class FoodBasketCartItem extends StatelessWidget {
  const FoodBasketCartItem({
    super.key,
    required this.product,
  });

  final List<basket.Result?>? product;

  @override
  Widget build(BuildContext context) {
    return Buildable<FoodBasketCubit, FoodBasketState, FoodBasketBuildableState>(
      properties: (buildable) => [buildable.selectedIds],
      builder: (context, state) {
        return Padding(
          padding: AppUtils.kPaddingAll16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: product!.map((product) {
              return GestureDetector(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Checkbox and product image container
                            SizedBox(
                              height: 16,
                              width: 16,
                              child: Checkbox(
                                value: state.selectedIds.contains(product?.id??0),
                                activeColor: const Color(0xFF2473F2),
                                side: const BorderSide(
                                  color: Color(0xFF8D909B),
                                  width: 1,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                checkColor: ColorConstants.cffffff,
                                onChanged: (value) => context.read<FoodBasketCubit>().setSelectIds(
                                  [product?.id ?? 0],
                                ),
                              ),
                            ),
                            AppUtils.kGap8,
                            Container(
                              width: AppLayout.getHeight(72, context),
                              height: AppLayout.getHeight(80, context),
                              padding: AppUtils.kPaddingAll12,
                              decoration: ShapeDecoration(
                                color: ColorConstants.kGreyOrderBack,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: ImageViewWidget(
                                imageLink: product?.image??'',
                              ),
                            ),
                          ],
                        ),
                        AppUtils.kGap16,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Product name and favorite icon
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text(
                                      product?.name??'',
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: Styles.manropeMedium14.copyWith(
                                        color: ColorConstants.c0E1A23,
                                      ),
                                    ),
                                  ),
                                  Buildable<FavouritesCubit, FavouritesState, FavouritesBuildableState>(
                                    properties: (buildable) => [buildable.likeIds],
                                    builder: (context, state) {
                                      return GestureDetector(
                                        onTap: () => context.read<FavouritesCubit>().setLikeId(product?.id??0),
                                        child: state.likeIds.contains("${product?.id??0}")
                                            ? IconConstants.heartSelect
                                            : IconConstants.heart,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              AppUtils.kGap8,
                              // Product price
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text("${product?.main_price??0} cум",
                                        maxLines: 2,
                                        style: Styles.manropeBold14.copyWith(
                                          color: ColorConstants.cF83333,
                                        )),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "13 699 000 cум",
                                      maxLines: 2,
                                      style: Styles.manropeBold14.copyWith(
                                        decoration: TextDecoration.lineThrough,
                                        color: ColorConstants.c8D909B,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              AppUtils.kGap20,
                              // Delete button and basket counter
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<FoodBasketCubit>(context).removeBasketId(product?.id??0);
                                    },
                                    child: Row(
                                      children: [
                                        IconConstants.trash,
                                        AppUtils.kGap8,
                                        Text(
                                          context.l10n.delete,
                                          style: Styles.manropeMedium14.copyWith(
                                            color: ColorConstants.c8D909B,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const BasketCounter(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppUtils.kGap20,
                    Divider(
                      color: ColorConstants.cE3E3E3,
                      height: 1,
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
