import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/home/components/small_button.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/constants/constants.dart'; // Import necessary constants
import 'package:karmango/core/utils/utils.dart'; // Import necessary utilities

class CategoryProductItemWidget extends StatelessWidget {
  const CategoryProductItemWidget({
    super.key,
    required this.product,
    required this.onTap,
    required this.smallButton,
    required this.likeTapped,
    required this.isLiked,
    this.isNew = false,
  });

  final Product product; // Ensure it matches your model
  final VoidCallback onTap;
  final VoidCallback smallButton;
  final VoidCallback likeTapped;
  final bool isLiked;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: FoodColors.cF5F5F5,
        ),
        // width: AppLayout.getWidth(164, context),
        // height: AppLayout.getWidth(200, context),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: AppLayout.getHeight(180, context),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  SizedBox(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: AppUtils.kBorderRadius12,
                        color: ColorConstants.kGreyOrderBack,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 36, right: 36, top: 36, bottom: 10),
                        child: ImageViewWidget(
                          imageLink: product.image ??
                              '', // Handle null case for imageLink
                          isNetImg: true,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Padding(
                      padding: AppUtils.kPaddingL8R16B16T16,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (isNew)
                            Container(
                              height: AppLayout.getHeight(24, context),
                              padding: AppUtils.kPaddingHor8Ver2,
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: FoodColors.c2DCC70,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: AppUtils.kBorderRadius4,
                                ),
                              ),
                              child: Text(
                                'New',
                                style: Styles.manropeMedium13
                                    .copyWith(color: FoodColors.cffffff),
                              ),
                            ),
                          AppUtils.kGap4,
                          if (product.discount != null)
                            Container(
                              padding: AppUtils.kPaddingHor8Ver2,
                              height: AppLayout.getHeight(24, context),
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                color: FoodColors.cF83333,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: AppUtils.kBorderRadius4,
                                ),
                              ),
                              child: Text(
                                '-${product.discount}%', // Use product.discount directly
                                style: Styles.manropeMedium13
                                    .copyWith(color: FoodColors.cffffff),
                              ),
                            ),
                          const Spacer(),
                          InkWell(
                            onTap: likeTapped,
                            child: isLiked
                                ? Icon(CupertinoIcons.heart_fill,
                                    color: FoodColors.cF83333)
                                : const Icon(CupertinoIcons.heart),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppUtils.kGap8, // Ensure proper gap between image and text
            Text(
              product.name ?? "", // Handle null case for product.name
              style: Styles.manropeMedium12.copyWith(color: FoodColors.c0E1923),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
            Text(
              '${product.discount ?? 0}%', // Handle null case for product.discount
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.manropeBold14.copyWith(
                color: isNew ? FoodColors.primaryColor : FoodColors.cA6AEBF,
              ),
            ),
            AppUtils.kGap4,
            Text(
              '${product.price?.toInt() ?? 0} ${context.l10n.sum}', // Handle null case for product.price
              style: Styles.interSemiBold14.copyWith(
                color: FoodColors.c0E1923,
                fontWeight: FontWeight.w600,
              ),
            ),
            AppUtils.kGap8,
            SmallButton(onTap: smallButton),
          ],
        ),
      ),
    );
  }
}
