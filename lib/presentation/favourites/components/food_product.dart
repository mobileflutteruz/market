import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/home/components/small_button.dart';

class FoodFavoriteItemWidget extends StatelessWidget {
  const FoodFavoriteItemWidget({
    super.key,
    required this.productList,
    required this.onTap,
    required this.likeTapped,
    required this.isLiked,
    required this.smallButton,
    this.isNew = false,
  });

  final List<Result?> productList;
  final void Function() onTap;
  final VoidCallback? likeTapped;
  final bool isLiked;
  final bool isNew;
  final void Function() smallButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: productList.map((product) {
        return GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: FoodColors.cF5F5F5,
            ),
            width: AppLayout.getWidth(164, context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppLayout.getHeight(180, context),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: FoodColors.cF5F5F5,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(36),
                          child: ImageViewWidget(
                            imageLink: product!.image!,
                            isNetImg: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (isNew)
                              Container(
                                height: AppLayout.getHeight(24, context),
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: FoodColors.c2DCC70,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'New',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: FoodColors.cffffff,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            const SizedBox(width: 4),
                            if (product.discount != null)
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                height: AppLayout.getHeight(24, context),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: FoodColors.cF83333,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  '-${product.discount}%',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: FoodColors.cffffff,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            const Spacer(),
                            InkWell(
                              onTap: likeTapped,
                              child:  Icon(
                                      CupertinoIcons.heart_fill,
                                       color: FoodColors.cF83333,
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  product.name ?? "",
                  style: TextStyle(
                    color: FoodColors.c0E1923,
                    fontSize: 12,
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '${product.price?.toInt()} ${context.l10n.sum}',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: FoodColors.c0E1923,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                SmallButton(onTap: smallButton),
                AppUtils.kGap8,
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
