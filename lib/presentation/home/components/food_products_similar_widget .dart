import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/home/components/food_similar.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import '../../details/details_page.dart';

class FoodProductsSimilarViewWidget extends StatefulWidget {
  const FoodProductsSimilarViewWidget({
    super.key,
    this.title = "",
    required this.similarProduct,
    // this.product,
    this.leftBtnTapped,
    required this.smallButton,
  });

  final void Function()? leftBtnTapped;
  final void Function() smallButton;
  // final Product? product;
  final ProductDataModel similarProduct;

  final String title;

  @override
  State<FoodProductsSimilarViewWidget> createState() =>
      _FoodProductsViewWidgetState();
}

class _FoodProductsViewWidgetState
    extends State<FoodProductsSimilarViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Buildable<DetailsCubit, DetailsState, DetailsBuildableState>(
      properties: (buildable) => [
        buildable.likeIds,
        // buildable.similarProduct
      ],
      builder: (context, state) {
        return Column(
          children: [
            Padding(
              padding: AppUtils.kPaddingHorizontal16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(widget.title,
                        style: Styles.manropeSemiBold18.copyWith(
                            color: FoodColors.c0E1923,
                            overflow: TextOverflow.ellipsis)),
                  ),
                  // GestureDetector(
                  //   onTap: widget.leftBtnTapped,
                  //   child: Text(
                  //     context.l10n.all,
                  //     style: Styles.manropeRegular14.copyWith(
                  //       color: FoodColors.c0E1923,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            AppUtils.kGap16,
            SizedBox(
              height: AppLayout.getHeight(320, context), //320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // final product = widget.similarProduct!;
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 16.0,
                        right: index == widget.similarProduct ? 16 : 0),
                    child: FoodSimilarItemWidget(
                      similarProduct:
                          state.product!.result!.similar_products![index],
                      likeTapped: () {
                        print("Product to  added to Favorite");
                        // context.read<FavouritesCubit>().setLikeId(widget.similarProduct.result!
                        //           .similar_products![index].id!,);

                        context.read<FavouritesCubit>().setLikeId(widget
                            .similarProduct
                            .result!
                            .similar_products![index]
                            .id!);
                        // context
                        //     .read<FavouritesCubit>()
                        //     .setFavouriteId(widget.similarProduct.result!.similar_products![index].id!);
                      },
                      isLiked: state.likeIds.contains(
                        widget.similarProduct.result!.similar_products![index]
                            .id!,
                      ), //state.likeIds.contains(product.id.toString()),

                      onTap: () {
                        showModalView(
                          context,
                          state.product!.result!.similar_products![index],
                        );
                      },
                      smallButton: widget.smallButton,
                    ),
                  );
                },
                itemCount:
                    widget.similarProduct.result!.similar_products!.length,
              ),
            ),
            AppUtils.kGap24,
          ],
        );
      },
    );
  }

  showModalView(BuildContext context, SimilarProduct? products) {
    return showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      builder: (homeContext) => DetailsPage(productId: products!.id),
    );
  }
}
