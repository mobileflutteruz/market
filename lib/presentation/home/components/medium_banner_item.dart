
import 'package:flutter/cupertino.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/image_view.dart';

class MediumBannerItemWidget extends StatelessWidget {
  const MediumBannerItemWidget({
    super.key,
    required this.imageUrl,
    this.itemTapped,
  });

  final String imageUrl;
  final void Function()? itemTapped;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: itemTapped,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Container(
            width: size.width * .9,
            height: 120,
            decoration: BoxDecoration(
              color: ColorConstants.c000000,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ImageViewWidget(
              imageLink: imageUrl,
              isNetImg: true,
            ),
          )),
    );
  }
}
