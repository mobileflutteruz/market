import 'package:flutter/material.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/food_category/food_category_page.dart';


class FoodCategoryView extends StatelessWidget {


  const FoodCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    // return Scaffold();

    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.categories,
      ),
      body: FoodCategoryPage(),
    );
  }
}
