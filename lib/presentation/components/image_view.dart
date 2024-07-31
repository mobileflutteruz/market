import 'package:flutter/material.dart';

class ImageViewWidget extends StatelessWidget {
  const ImageViewWidget({
    super.key,
    required this.imageLink,
    this.isNetImg = false,
  });

  final String imageLink;
  final bool isNetImg;
  final BoxFit fit = BoxFit.cover;

  @override
  Widget build(BuildContext context) {
    // print( "IMAGEEEEEEEEEEEEEe            ""https://karmango.shop.dukan.uz$imageLink");
    return isNetImg
        ? Image.network(
            "https://karmango.shop.dukan.uz$imageLink",
            fit: BoxFit.cover,
          )
        : Image.asset(imageLink);
    // return isNetImg?Image.network("https://karmango.shop.dukan.uz/backend/public/api${imageLink}",fit: BoxFit.cover, ): Image.asset(imageLink);
  }
}
