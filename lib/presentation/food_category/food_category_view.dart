import 'package:flutter/material.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/food_category/category_item_view/category_item_view.dart';
import 'package:karmango/presentation/food_category/components/category_item_widget.dart';

class FoodCategoryView extends StatelessWidget {


  const FoodCategoryView({super.key});
  @override
  Widget build(BuildContext context) {
    // return Scaffold();

    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.categories,
      ),
      body: Container(),
    );
  }
}
