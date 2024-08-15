import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';
import '../../../../core/utils/utils.dart';

class FoodInfoWidget extends StatelessWidget {
  const FoodInfoWidget({super.key, required this.favouritesCount});
  final int favouritesCount;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.yourFavorites,
              style: Styles.manropeSemiBold18.copyWith(
                color: FoodColors.c0E1923,
              ),
            ),
            AppUtils.kGap4,
            Text(
              "$favouritesCount ${context.l10n.products}",
              style: Styles.manropeRegular14.copyWith(
                color: FoodColors.c8B96A5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
