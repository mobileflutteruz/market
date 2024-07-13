import 'package:karmango/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:karmango/presentation/components/image_view.dart';

class FoodBannerItemWidget extends StatelessWidget {
  const FoodBannerItemWidget({
    super.key,
    required this.imageUrl,
    this.itemTapped,
  });

  final String imageUrl;
  final void Function()? itemTapped;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: itemTapped,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          width: size.width * 0.9,
          height: 180,
          decoration: BoxDecoration(
            color: FoodColors.c000000,
            borderRadius: BorderRadius.circular(12),
          ),
          child: ImageViewWidget(
            imageLink: imageUrl,
            isNetImg: true,
          ),
        ),
      ),
    );
  }
}
