import 'package:carousel_slider/carousel_slider.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/presentation/home/components/banner_item.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:flutter/material.dart';

class FoodBannerViewWidget extends StatelessWidget {
  const FoodBannerViewWidget({super.key, required this.banners});

  final MobileBanners? banners;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      // itemCount: banners.banners!.length, 
      itemCount: banners!.banners!.length,
      itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
          FoodBannerItemWidget(
        imageUrl: banners!.banners![index].banner??"",
        itemTapped: () {
          print("FoodBannerViewWidget");
        },

      ),
      options: CarouselOptions(
        height: AppLayout.getHeight(180, context),
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
