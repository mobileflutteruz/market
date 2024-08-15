// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:karmango/core/utils/app_layouts.dart';
// import 'package:karmango/domain/model/mobile/home/home.dart';
// import 'package:karmango/presentation/home/components/medium_banner_item.dart';

// class MediumBannersViewWidget extends StatelessWidget {
//   const MediumBannersViewWidget({
//     super.key,
//     required this.banners,
//   });

//   final MobileBanners banners;

//   @override
//   Widget build(BuildContext context) {
//     return CarouselSlider.builder(
//       itemCount: banners.banners!.length,
//       itemBuilder: (BuildContext context, int index, int pageViewIndex) =>
//           MediumBannerItemWidget(imageUrl: banners.banners![index].image),
//       options: CarouselOptions(
//         height: AppLayout.getHeight(120, context),
//         //120,
//         aspectRatio: 16 / 9,
//         viewportFraction: 1,
//         initialPage: 0,
//         enableInfiniteScroll: true,
//         reverse: false,
//         autoPlay: true,
//         autoPlayInterval: const Duration(seconds: 5),
//         autoPlayAnimationDuration: const Duration(milliseconds: 800),
//         autoPlayCurve: Curves.fastOutSlowIn,
//         enlargeCenterPage: true,
//         enlargeFactor: 0.3,
//         scrollDirection: Axis.horizontal,
//       ),
//     );
//   }
// }
