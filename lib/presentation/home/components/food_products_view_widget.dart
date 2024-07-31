import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/home/components/food_product.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../details/details_page.dart';

class FoodProductsViewWidget extends StatefulWidget {
  const FoodProductsViewWidget({
    super.key,
    this.title = "",
    required this.products,
    this.leftBtnTapped,
    required this.smallButton,
  });

  final void Function()? leftBtnTapped;
  final void Function() smallButton;
  final List<MobileProduct> products;
  final String title;

  @override
  State<FoodProductsViewWidget> createState() => _FoodProductsViewWidgetState();
}

class _FoodProductsViewWidgetState extends State<FoodProductsViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Buildable<FoodHomeCubit, FoodHomeState, FoodHomeBuildableState>(
      properties: (buildable) => [
        buildable.likeIds,
      ],
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: AppUtils.kPaddingHorizontal16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(widget.title,
                        style: Styles.manropeSemiBold18.copyWith(
                            color: FoodColors.c0E1923,
                            overflow: TextOverflow.ellipsis)),
                  ),
                  GestureDetector(
                    onTap: widget.leftBtnTapped,
                    child: Text(
                      context.l10n.all,
                      style: Styles.manropeRegular14.copyWith(
                        color: FoodColors.c0E1923,
                      ),
                    ),
                  )
                ],
              ),
            ),
            AppUtils.kGap16,
            SizedBox(
              height: AppLayout.getHeight(320, context), //320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = widget.products[index];
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: index == widget.products.length - 1 ? 16 : 0),
                    child: FoodProductItemWidget(
                      likeTapped: () {
                        print("Product to  added to Favorite");
                        // context
                        //     .read<FavouritesCubit>().setLikeId(widget.products![index].id!);
                        context.read<FavouritesCubit>().setLikeId(product.id!);
                      },
                      isLiked: state.likeIds.contains(product.id!),
                      product: widget.products[index],
                      onTap: () {
                        showModalView(context, widget.products[index]);
                      },
                      smallButton: () {
                        context
                            .read<FoodBasketCubit>()
                            .setBasketProducts(product.id!);
                        print(
                            "BASKEEEEEEEEEEEEEEEEET SEEET ITEEEEEM:   ${context.read<FoodBasketCubit>().setBasketProducts(product.id!)}");
                      },
                    ),
                  );
                },
                itemCount: widget.products.length,
              ),
            ),
            AppUtils.kGap24,
          ],
        );
      },
    );
  }

  showModalView(BuildContext context, MobileProduct product) {
    return showCupertinoModalBottomSheet(
        expand: true,
        context: context,
        builder: (homeContext) => DetailsPage(productId: product.id!));
  }
}
