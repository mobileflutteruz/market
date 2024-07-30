import 'package:flutter/material.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';

class FoodCategoryItemWidget extends StatelessWidget {
  final void Function()? onTap;
  
  final String? imageLink;
  final String? categoryItemName;

  const FoodCategoryItemWidget({
    super.key,
    this.onTap,
  
    required this.imageLink,
    required this.categoryItemName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppUtils.kPaddingAll12,
        width: AppLayout.getWidth(164, context), 
        height: AppLayout.getHeight(128, context), 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: ColorConstants.cF5F5F8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  categoryItemName!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF0E1923),
                    fontSize: 12,
                    fontFamily: 'Manrope',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            AppUtils.kGap10,
            // if (smallButton != null)
            //   IconButton(
            //     icon: const Icon(Icons.more_vert),
            //     onPressed: smallButton,
            //   ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ImageViewWidget(
                  imageLink: imageLink!,
                  isNetImg: true, // Assuming imageLink is a network image URL
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
