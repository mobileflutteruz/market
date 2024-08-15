import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/presentation/home/components/small_button.dart';

class FoodProductItemWidget extends StatefulWidget {
  const FoodProductItemWidget({
    super.key,
    required this.product,
    required this.onTap,
    required this.likeTapped,
    required this.isLiked,
    required this.smallButton,
    this.isNew = false,
  });

  final MobileProduct? product;
  final void Function() onTap;
  final void Function()? likeTapped;
  final bool isLiked;
  final bool isNew;
  final void Function() smallButton;

  @override
  _FoodProductItemWidgetState createState() => _FoodProductItemWidgetState();
}

class _FoodProductItemWidgetState extends State<FoodProductItemWidget> {
  late bool _isLiked;

  @override
  void initState() {
    super.initState();
    _isLiked = widget.isLiked;
  }

  void _toggleLike() {
    setState(() {
      if (widget.likeTapped != null) {
        widget.likeTapped!();
      }
      _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                      borderRadius: BorderRadius.circular(12),
                      color: FoodColors.cF5F5F5,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(36),
                      child: ImageViewWidget(
                        imageLink: widget.product!.image!,
                        isNetImg: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (widget.isNew)
                          Container(
                            height: AppLayout.getHeight(24, context),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: FoodColors.c2DCC70,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              'New',
                              style: TextStyle(
                                color: FoodColors.cffffff,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        const SizedBox(width: 4),
                        if (widget.product!.discount != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            height: AppLayout.getHeight(24, context),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: FoodColors.cF83333,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              '-${widget.product!.discount}%',
                              style: TextStyle(
                                color: FoodColors.cffffff,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
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
            const SizedBox(height: 8),
            Text(
              widget.product!.name ?? "",
              style: TextStyle(
                color: FoodColors.c0E1923,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.product!.product_type ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color:
                    widget.isNew ? FoodColors.primaryColor : FoodColors.cA6AEBF,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              ' ${(widget.product!.price!.toInt())}  ${context.l10n.sum}',
              style: TextStyle(
                color: FoodColors.c0E1923,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            SmallButton(onTap: widget.smallButton),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
