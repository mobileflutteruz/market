import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';

class FoodBasketCartItem extends StatelessWidget {
  const FoodBasketCartItem(
      {super.key, required this.products, this.onDeleteTap});

  final List<ProductData>? products; // Ro'yxat sifatida o'zgartirdik
  final void Function(ProductData product)?
      onDeleteTap; // Passed product to delete function

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: products!.length ?? 0,
        itemBuilder: (context, index) {
          final product = products![index];
          return Padding(
            padding: AppUtils.kPaddingAll16,
            child: GestureDetector(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSelectCheckbox(context, product),
                      SizedBox(width: 8),
                      _buildProductImage(product, context),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildProductTitle(context, product),
                            SizedBox(height: 8),
                            _buildProductPrices(product),
                            SizedBox(height: 20),
                            _buildActions(context, product),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: ColorConstants.cE3E3E3, height: 1),
                  SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // Mahsulotni tanlash checkbox
  Checkbox _buildSelectCheckbox(BuildContext context, ProductData product) {
    return Checkbox(
      value: context
          .read<FoodBasketCubit>()
          .buildable
          .selectedIds
          .contains(product.id!),
      onChanged: (value) {
        if (value == true) {
          context.read<FoodBasketCubit>().setSelectIds([product.id!]);
        } else {
          context.read<FoodBasketCubit>().removeByProductId(product.id!);
        }
      },
    );
  }

  // Mahsulot tasvirini ko'rsatish
  Container _buildProductImage(ProductData product, context) {
    return Container(
      width: AppLayout.getHeight(72, context),
      height: AppLayout.getHeight(80, context),
      padding: AppUtils.kPaddingAll12,
      decoration: BoxDecoration(
        color: ColorConstants.kGreyOrderBack,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ImageViewWidget(imageLink: product.image ?? ''),
    );
  }


  Row _buildProductTitle(BuildContext context, ProductData product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            product.name ?? '',
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
              onTap: () {
                context.read<FavouritesCubit>().setLikeId(product.id ?? 0);
                final favouritesCubit = context.read<FavouritesCubit>();

                if (state.likeIds.contains(product.product_id!)) {
                  favouritesCubit.deleteLikeId(product.product_id!);
                } else {
                  favouritesCubit.setLikeId(product.product_id!);
                }
              },
              child: state.likeIds.contains("${product.id ?? 0}")
                  ? IconConstants.heartSelect
                  : IconConstants.heart,
            );
          },
        ),
      ],
    );
  }

  // Mahsulot narxlarini ko'rsatish
  Row _buildProductPrices(ProductData product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "${product.price_to_pay!.toInt() ?? 0} cум",
            style: Styles.manropeBold14.copyWith(
              color: ColorConstants.cF83333,
            ),
          ),
        ),
        Expanded(
          child: Text(
            "${product.main_price ?? 0} cум",
            style: Styles.manropeBold14.copyWith(
              decoration: TextDecoration.lineThrough,
              color: ColorConstants.c8D909B,
            ),
          ),
        ),
      ],
    );
  }

  // Har bir mahsulot uchun aksiyalar
  Row _buildActions(BuildContext context, ProductData product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Delete action
        GestureDetector(
          onTap: () {
            if (onDeleteTap != null) {
              onDeleteTap!(product);
            }
          },
          child: Row(
            children: [
              IconConstants.trash,
              SizedBox(width: 8), // Replaced AppUtils.kGap8 with SizedBox
              Text(
                context.l10n.delete,
                style: Styles.manropeMedium14.copyWith(
                  color: ColorConstants.c8D909B,
                ),
              ),
            ],
          ),
        ),
        // Mahsulotni kamaytirish va oshirish
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context
                    .read<FoodBasketCubit>()
                    .decreaseQuantity(product.product_id!);
              },
              child: _buildIconButton(context, Icons.remove),
            ),
            SizedBox(width: 16), // Replaced AppUtils.kGap16 with SizedBox
            Text(
              product.click_quantity!.toString(),
              style: Styles.manropeMedium14.copyWith(
                color: ColorConstants.c0E1A23,
              ),
            ),
            SizedBox(width: 16), // Replaced AppUtils.kGap16 with SizedBox
            GestureDetector(
              onTap: () {
                context
                    .read<FoodBasketCubit>()
                    .increaseQuantity(product.product_id!);
              },
              child: _buildIconButton(context, Icons.add),
            ),
          ],
        ),
      ],
    );
  }

  // Custom button for counter actions (increment/decrement)
  Container _buildIconButton(
    BuildContext context,
    IconData icon,
  ) {
    return Container(
      height: AppLayout.getHeight(32, context),
      width: AppLayout.getHeight(32, context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: ColorConstants.cF5F5F8,
      ),
      child: Icon(
        icon,
        size: AppLayout.getHeight(14, context),
      ),
    );
  }
}
