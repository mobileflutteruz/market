
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/search/components/search_components.dart';

import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class FoodSearchView extends StatefulWidget {
  const FoodSearchView({super.key});

  @override
  State<FoodSearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<FoodSearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FoodSearchAppBarWidget(),
      body: Padding(
        padding: AppUtils.kPaddingHorizontal16,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // lastSearches.isNotEmpty ? AppUtils.kGap24 : const SizedBox(),

            // lastSearches.isNotEmpty
            //     ? Row(
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Expanded(
            //             child: Text(
            //               context.l10n.lastSearch,
            //               style: Styles.manropeSemiBold16.copyWith(
            //                    color: FoodColors.c0E1A23,
            //                 overflow: TextOverflow.ellipsis,
            //               ),
            //             ),
            //           ),
            //           TextButton(
            //               onPressed: () {},
            //               child: Text(
            //                 context.l10n.clear,
            //                 style: Styles.manropeRegular14.copyWith(
            //                   color: FoodColors.primaryColor,
            //                 ),
            //               ))
            //         ],
            //       )
            //     : const SizedBox(),

            // lastSearches.isNotEmpty ? AppUtils.kGap24 : const SizedBox(),

            // ...List.generate(
            //   lastFoodSearches.length,
            //   (index) => Column(
            //     children: [
            //       Row(
            //         children: [
            //           IconConstants.clockCircle,
            //           AppUtils.kGap12,
            //           Expanded(
            //             child: Text(
            //               lastFoodSearches[index],
            //               style: Styles.manropeMedium14.copyWith(
            //                 color: FoodColors.c0E1923,
            //                 height: 1.1,
            //                 overflow: TextOverflow.ellipsis,
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //       AppUtils.kGap16,
            //        Divider(
            //         height: 1,
            //         color: FoodColors.cEEEEEE,
            //       ),
            //       AppUtils.kGap20,
            //     ],
            //   ),
            // ),

            AppUtils.kGap24,

            Text(
              context.l10n.popularGoods,
              style: Styles.manropeSemiBold16.copyWith(
                color: FoodColors.c0E1A23,
              ),
            ),
            AppUtils.kGap20,

            SizedBox(
              child: Column(
                children: [
                  const Row(
                    children: [
                      // Text(
                      //   popularSearchesF.first,
                      //   style: Styles.manropeMedium14.copyWith(
                      //     color: FoodColors.c0E1923,
                      //     height: 1.1,
                      //   ),
                      // ),
                    ],
                  ),
                  AppUtils.kGap16,
                   Divider(
                    height: 1,
                    color: FoodColors.cEEEEEE,
                  )
                ],
              ),
            ),

            IconConstants.tick,
          ],
        ),
      ),
    );
  }
}
