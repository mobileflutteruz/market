import 'package:flutter/material.dart';
import 'package:karmango/presentation/category/food_category_page.dart';

class FoodCategoryView extends StatelessWidget {
  const FoodCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    // return Scaffold();

    return const Scaffold(
        // appBar: CommonAppBar(
        //   title: context.l10n.categories,
        // ),
        body: FoodCategoryPage());
  }
}
