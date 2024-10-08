import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/home/components/small_button.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class FoodSimilarItemWidget extends StatefulWidget {
  const FoodSimilarItemWidget({
    super.key,
    required this.similarProduct,
    required this.onTap,
    required this.likeTapped,
    required this.isLiked,
    required this.smallButton,
    this.isNew = false,
  });

  final SimilarProduct? similarProduct;
  final void Function() onTap;
  final void Function() smallButton;

  final void Function()? likeTapped;
  final bool isLiked;
  final bool isNew;

  @override
  _FoodSimilarItemWidgetState createState() => _FoodSimilarItemWidgetState();
}

class _FoodSimilarItemWidgetState extends State<FoodSimilarItemWidget> {
  late bool _isLiked;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
    });
    if (widget.likeTapped != null) {
      widget.likeTapped!();
    }
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.similarProduct!;
    return GestureDetector(
      onTap: widget.onTap,
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
                      child: ImageViewWidget(
                        imageLink: product.image!,
                        isNetImg: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: AppUtils.kPaddingL8R16B16T16,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.isNew)
                          Container(
                            height: AppLayout.getHeight(24, context),
                            padding: AppUtils.kPaddingHor8Ver2,
                            alignment: Alignment.center,
                            decoration: const ShapeDecoration(
                              color: Color(0xFF2DCC70),
                              shape: RoundedRectangleBorder(
                                borderRadius: AppUtils.kBorderRadius4,
                              ),
                            ),
                            child: Text(
                              'New',
                              style: Styles.manropeMedium13.copyWith(
                                color: Colors.white,
                              ),
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
                              '-${product.discount}％',
                              style: Styles.manropeMedium13.copyWith(
                                color: FoodColors.cffffff,
                              ),
                            ),
                          ),
                        const Spacer(),
                        InkWell(
                          onTap: _toggleLike,
                          child: _isLiked
                              ? Icon(
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
              product.name ?? "",
              style: Styles.manropeMedium12.copyWith(
                color: FoodColors.c0E1923,
              ),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
            Text(
              product.product_type!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.manropeBold14.copyWith(
                color:
                    widget.isNew ? FoodColors.primaryColor : FoodColors.cA6AEBF,
              ),
            ),
            AppUtils.kGap4,
            Text(
              ' ${(product.price!.toInt())}  ${context.l10n.sum}',
              style: Styles.interSemiBold14.copyWith(
                color: FoodColors.c0E1923,
                fontWeight: FontWeight.w600,
              ),
            ),
            AppUtils.kGap8,
            SmallButton(
              onTap: widget.smallButton,
            ),
          ],
        ),
      ),
    );
  }
}
