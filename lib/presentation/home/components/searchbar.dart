import 'package:karmango/core/constants/constants.dart';

import 'package:karmango/presentation/search/food_search_page.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodSearchBarWidget extends StatelessWidget {
  const FoodSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const FoodSearchPage(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 48,
        padding: const EdgeInsets.only(left: 16, right: 8, bottom: 10, top: 10),
        margin: AppUtils.kPaddingHorizontal16,
        decoration: ShapeDecoration(
          color: FoodColors.cF4F7F8,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                context.l10n.searchByProduct,
                style: Styles.manropeMedium14.copyWith(
                  color: FoodColors.c8D909B,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            // const Spacer(),

            IconConstants.search,

            // Icon(Icons.search)
          ],
        ),
      ),
    );
  }
}

