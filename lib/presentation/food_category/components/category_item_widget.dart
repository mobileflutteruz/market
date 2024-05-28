import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/image_view.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';



class FoodCategoryItemWidget extends StatelessWidget {
  final void Function()? onTap;
  final String? imageLink;
  final String? categoryItemName;

  const FoodCategoryItemWidget({
    Key? key,
    this.onTap,
    required this.imageLink,
    required this.categoryItemName, required Null Function() smallButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppUtils.kPaddingAll12,
        width: AppLayout.getHeight(164, context),
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
              child: Text(
                categoryItemName.toString(),
                maxLines: 2,
              
                
                              
                style: const TextStyle(
                  color: Color(0xFF0E1923),
                  
                  fontSize: 12,
                  fontFamily: 'Manrope',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
            ),
            Container(
              height: AppLayout.getHeight(90, context),
              alignment: Alignment.bottomRight,
              child: ImageViewWidget(
                imageLink: imageLink!,
                isNetImg: true,
            
              ),
            ),
          ],
        ),
      ),
    );
  }
}
