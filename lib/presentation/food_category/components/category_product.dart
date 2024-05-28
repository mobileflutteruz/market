import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';
import 'package:karmango/presentation/home/components/small_button.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class CategoryProductItemWidget extends StatelessWidget {
  const CategoryProductItemWidget({
    super.key,
    required this.product,
    required this.onTap,
    required this.likeTapped,
    required this.isLiked,
    required this.smallButton,
    this.isNew = false,
  });

  final int? product;
  final void Function() onTap;
  final void Function() smallButton;

  final void Function()? likeTapped;
  final bool isLiked;
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    // print("PROOOOOOOOOOOOODUCT" + product!.image!);
    return Buildable<CategoryCubit, CategoryState, CategoryBuildable>(
      properties: (buildable) => [  buildable.category, buildable.cartProductModel, buildable.product],
      builder: (context, state) {
        return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
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
                      borderRadius: AppUtils.kBorderRadius12,
                      color: ColorConstants.kGreyOrderBack,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(36),
                      child: ImageViewWidget(imageLink:  state!.product!.image!, isNetImg: true,),
                    ),
                  ),
                  Padding(
                    padding: AppUtils.kPaddingL8R16B16T16,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (isNew)
                          Container(
                            height: AppLayout.getHeight(24, context),
                            padding: AppUtils.kPaddingHor8Ver2,
                            alignment: Alignment.center,
                            decoration:  ShapeDecoration(
                              color: FoodColors.c2DCC70,
                              shape:const RoundedRectangleBorder(
                                borderRadius: AppUtils.kBorderRadius4,
                              ),
                            ),
                            child: Text(
                              'New',
                              style: Styles.manropeMedium13.copyWith(
                                 color: FoodColors.cffffff
                              ),
                            ),
                          ),
                        AppUtils.kGap4,
                        if (state.product!.discount != null)
                          Container(
                            padding: AppUtils.kPaddingHor8Ver2,
                            height: AppLayout.getHeight(24, context),
                            alignment: Alignment.center,
                            decoration:  ShapeDecoration(
                              color: FoodColors.cF83333,
                              shape: const RoundedRectangleBorder(
                                borderRadius: AppUtils.kBorderRadius4,
                              ),
                            ),
                            child: Text(
                              '-${state.product!.discount}％',
                              style: Styles.manropeMedium13.copyWith(
                                color: FoodColors.cffffff,
                              ),
                            ),
                          ),
                        
                        const Spacer(),
                        InkWell(
                          onTap: likeTapped,
                          child: isLiked
                              ?  Icon(
                                  CupertinoIcons.heart_fill,
                                  color: FoodColors.cF83333,
                                )
                              : const Icon(
                                  CupertinoIcons.heart,
                                ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            AppUtils.kGap8,
            Text(
              state.product!.name_uz ?? "",
              style: Styles.manropeMedium12.copyWith(
                color: FoodColors.c0E1923,
              ),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
            // AppUtils.kGap8,
            Text(
            
              '${state.product!.discount}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.manropeBold14.copyWith(
                color: isNew ? FoodColors.primaryColor : FoodColors.cA6AEBF,
              ),
            ),
            AppUtils.kGap4,
            Text(
              ' ${(state.product!.price!.toInt())}  ${context.l10n.sum}',
              style: Styles.interSemiBold14.copyWith( 
                 color: FoodColors.c0E1923,
                fontWeight: FontWeight.w600,
              ),
              
             
            ),
            AppUtils.kGap8,
              SmallButton(
              onTap: smallButton,
            ),
        

            
          ],
        ),
      ),
    );});
  }
}
