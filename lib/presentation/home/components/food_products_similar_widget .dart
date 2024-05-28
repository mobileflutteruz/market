import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/presentation/home/components/food_similar.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../details/details_page.dart';

class FoodProductsViewWidget extends StatefulWidget {
  FoodProductsViewWidget({
    super.key,
    this.title = "",
    this.similarProduct,
    this.product,
    this.leftBtnTapped,
    required this.smallButton,
  });

  final void Function()? leftBtnTapped;
  final void Function() smallButton;
  final Product? product;
  final List<ProductDataModel>? similarProduct;
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
                  final product = widget.product!;
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: index == widget.product! ? 16 : 0),
                    child: FoodSimilarItemWidget(
                      similarProduct:  widget.similarProduct![index],
                      likeTapped: () {
                        // context.read<FoodHomeCubit>().setLikeId(product.id);
                      },
                      isLiked:
                          false, //state.likeIds.contains(product.id.toString()),

                      onTap: () {
                        showModalView(
                          context,
                           widget.similarProduct![index],
                        );
                      },
                      smallButton: widget.smallButton,
                    ),
                  );
                },
                itemCount: widget.similarProduct!.length,
              ),
            ),
            AppUtils.kGap24,
          ],
        );
      },
    );
  }

  showModalView(BuildContext context, ProductDataModel products) {
    return showCupertinoModalBottomSheet(
      expand: true,
      context: context,
      builder: (homeContext) =>
          DetailsPage(productId: products.result!.product!.id),
    );
  }
}
