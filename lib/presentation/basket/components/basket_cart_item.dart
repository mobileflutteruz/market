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

class FoodBasketCartItem extends StatefulWidget {
  const FoodBasketCartItem({
    super.key,
    required this.product,
  });

  final List<Result?> product;

  @override
  State<FoodBasketCartItem> createState() => _FoodBasketCartItemState();
}

class _FoodBasketCartItemState extends State<FoodBasketCartItem> {
  @override
  Widget build(BuildContext context) {
    // Ekran o'lchamlarini olish uchun MediaQuery
    final screenWidth = MediaQuery.of(context).size.width;

    return Buildable<FoodBasketCubit, FoodBasketState,
        FoodBasketBuildableState>(
      properties: (buildable) =>
          [buildable.selectedIds, buildable.cardProductIds],
      builder: (context, state) {
        return Padding(
          padding: AppUtils.kPaddingAll16,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.product.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final productItem = widget.product[index];
              final isSelected = state.selectedIds
                  .contains(widget.product[index]!.product_id!);
              return GestureDetector(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Checkbox.adaptive(
                          value: state.selectedIds.contains(productItem!.id!),
                          activeColor: const Color(0xFF2473F2),
                          side: const BorderSide(
                            color: Color(0xFF8D909B),
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          checkColor: ColorConstants.cffffff,
                          onChanged: (value) =>
                              context.read<FoodBasketCubit>().setSelectIds(
                            [productItem!.id!],
                          ),
                        ),
                        AppUtils.kGap8,
                        _buildProductImage(productItem),
                        AppUtils.kGap16,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildProductTitle(
                                  context, productItem, screenWidth),
                              AppUtils.kGap8,
                              _buildProductPrices(productItem, screenWidth),
                              AppUtils.kGap20,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      print("REMOVE ITEEEM");
                                      BlocProvider.of<FoodBasketCubit>(context)
                                          .removeBasketId(
                                              productItem?.product_id ?? 0);
                                    },
                                    child: Row(
                                      children: [
                                        IconConstants.trash,
                                        AppUtils.kGap8,
                                        Text(
                                          context.l10n.delete,
                                          style:
                                              Styles.manropeMedium14.copyWith(
                                            color: ColorConstants.c8D909B,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            print("MINUUUUUUUUS");
                                            context
                                                .read<FoodBasketCubit>()
                                                .decreaseQuantity(
                                                    productItem!.product_id!);
                                          });
                                        },
                                        child: _buildIconButton(
                                            icon: Icons.remove),
                                      ),
                                      AppUtils.kGap16,
                                      Text(
                                        productItem!.click_quantity!
                                            .toString(), // Display the current quantity
                                        style: Styles.manropeMedium14.copyWith(
                                          color: ColorConstants.c0E1A23,
                                        ),
                                      ),
                                      AppUtils.kGap16,
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            print("PLUUUUUUUUUUS");
                                            context
                                                .read<FoodBasketCubit>()
                                                .increaseQuantity(
                                                    productItem!.product_id!);
                                          });
                                        },
                                        child:
                                            _buildIconButton(icon: Icons.add),
                                      ),
                                    ],
                                  ),
                                  // _buildCounter(productItem), // Updated here
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppUtils.kGap20,
                    Divider(color: ColorConstants.cE3E3E3, height: 1),
                    AppUtils.kGap20,
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  // Product image widget
  Container _buildProductImage(Result? productItem) {
    return Container(
      width: AppLayout.getHeight(72, context),
      height: AppLayout.getHeight(80, context),
      padding: AppUtils.kPaddingAll12,
      decoration: BoxDecoration(
        color: ColorConstants.kGreyOrderBack,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ImageViewWidget(imageLink: productItem?.image ?? ''),
    );
  }

  // Product title and like button
  Row _buildProductTitle(
      BuildContext context, Result? productItem, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            productItem?.name ?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: Styles.manropeMedium14.copyWith(
              color: ColorConstants.c0E1A23,
              fontSize: screenWidth < 400 ? 12 : 14, // Responsiv font size
            ),
          ),
        ),
        Buildable<FavouritesCubit, FavouritesState, FavouritesBuildableState>(
          properties: (buildable) => [buildable.likeIds],
          builder: (context, state) {
            return GestureDetector(
              onTap: () => context
                  .read<FavouritesCubit>()
                  .setLikeId(productItem?.id ?? 0),
              child: state.likeIds.contains("${productItem?.id ?? 0}")
                  ? IconConstants.heartSelect
                  : IconConstants.heart,
            );
          },
        ),
      ],
    );
  }

  // Product price display
  Row _buildProductPrices(Result? productItem, double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "${productItem?.price_to_pay!.toInt() ?? 0} cум",
            maxLines: 2,
            style: Styles.manropeBold14.copyWith(
              color: ColorConstants.cF83333,
              fontSize: screenWidth < 400 ? 12 : 14,
            ),
          ),
        ),
        Expanded(
          child: Text(
            "${productItem?.main_price ?? 0} cум",
            maxLines: 2,
            style: Styles.manropeBold14.copyWith(
              decoration: TextDecoration.lineThrough,
              color: ColorConstants.c8D909B,
              fontSize: screenWidth < 400 ? 12 : 14,
            ),
          ),
        ),
      ],
    );
  }

  // Counter buttons (increment/decrement)
  Row _buildCounter(Result? productItem) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            // Correctly call the decreaseQuantity method for minus button
            context
                .read<FoodBasketCubit>()
                .decreaseQuantity(productItem!.product_id!);
          },
          child: _buildIconButton(icon: Icons.remove),
        ),
        AppUtils.kGap16,
        Text(
          productItem!.click_quantity!
              .toString(), // Display the current quantity
          style: Styles.manropeMedium14.copyWith(
            color: ColorConstants.c0E1A23,
          ),
        ),
        AppUtils.kGap16,
        GestureDetector(
          onTap: () {
            // Correctly call the increaseQuantity method for plus button
            context
                .read<FoodBasketCubit>()
                .increaseQuantity(productItem!.product_id!);
          },
          child: _buildIconButton(icon: Icons.add),
        ),
      ],
    );
  }

  // Custom button for counter actions
  Container _buildIconButton({required IconData icon}) {
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
