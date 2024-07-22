import 'package:flutter/cupertino.dart';
import 'package:karmango/presentation/favourites/food_favourites_page.dart';
import 'package:karmango/presentation/basket/food_basket_view.dart';
import 'package:karmango/presentation/category/food_category_view.dart';
import 'package:karmango/presentation/profile/food_profile_view.dart';
import 'package:karmango/presentation/home/components/food_home_components.dart';



buildHomeUi(int index) {
  switch (index) {
    case 0:
      return  const FoodHomeView();
    case 1:
      return const FoodCategoryView();
    case 2:
      return const FoodBasketView();
    case 3:
      return const FoodFavouritesPage();
    case 4:
      return const FoodProfileView();
    default:
      return const SizedBox();
  }
}
