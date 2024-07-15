import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/presentation/auth/change_password/components/const_comp.dart';
import 'package:karmango/presentation/auth/login/food_login_page.dart';
import 'package:karmango/presentation/auth/splash/food_splash_view.dart';
import 'package:karmango/presentation/auth/widgets/all_components.dart';
import 'package:karmango/presentation/favourites/food_favourites_page.dart';
import 'package:karmango/presentation/food_basket/food_basket_page.dart';
import 'package:karmango/presentation/food_profile/components/about_app_page.dart';
import 'package:karmango/presentation/food_profile/components/change_language_page.dart';
import 'package:karmango/presentation/food_profile/components/contact_us_page.dart';
import 'package:karmango/presentation/food_profile/components/profile_add_card.dart';
import 'package:karmango/presentation/food_profile/components/profile_card_page.dart';
import 'package:karmango/presentation/food_profile/components/profile_edit_page.dart';
import 'package:karmango/presentation/food_profile/components/settings_page.dart';
import 'package:karmango/presentation/food_profile/food_profile_view.dart';
import 'package:karmango/presentation/home/all_prodact/all_prodact.dart';
import 'package:karmango/presentation/home/food_home_page.dart';
import 'package:karmango/presentation/location/add_location_page.dart';
import 'package:karmango/presentation/location/components/empty_location.dart';
import 'package:karmango/presentation/location/our_branches_page.dart';
import 'package:karmango/presentation/my_order/components/my_order_cart.dart';
import 'package:karmango/presentation/notification/components/notification_item_page.dart';
import 'package:karmango/presentation/notification/notification_page.dart';
import 'package:karmango/presentation/order/food_order_view.dart';
import 'package:karmango/presentation/search/food_search_page.dart';
import 'package:flutter/material.dart';


class OngenerateRoutes {
  static final OngenerateRoutes _instance = OngenerateRoutes._init();

  static OngenerateRoutes get instance => _instance;

  OngenerateRoutes._init();

  Route? routeGenerator(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      ///Food
      case FoodNavigatorConst.foodLoginScreen:
        return sampleRoute(const FoodLoginPage());
      case FoodNavigatorConst.foodPhoneInput:
        return sampleRoute(const FoodPhoneInput());
      case FoodNavigatorConst.foodOtpScreen:
       final phoneNumber = settings.arguments as String;
        return sampleRoute(
          FoodOtpScreen(
            phoneNumber: phoneNumber,
          ),
        );
      case FoodNavigatorConst.foodRegisterScreen:
        return sampleRoute(const FoodRegisterPage());
      case FoodNavigatorConst.foodReOtpScreen:
        return sampleRoute(const FoodReOtpScreen());
      case FoodNavigatorConst.foodChangePassword:
        return sampleRoute(const FoodChangePasswordPage());
      case FoodNavigatorConst.foodSplash:
        return sampleRoute(const FoodSplashView());
      case FoodNavigatorConst.foodHome:
        return sampleRoute( const FoodHomePage());
      case FoodNavigatorConst.foodSearchPage:
        return sampleRoute(const FoodSearchPage());
      case FoodNavigatorConst.foodProfileCard:
        return sampleRoute(const FoodProfileCardPage());
      case FoodNavigatorConst.foodFavourites:
        return sampleRoute(const FoodFavouritesPage());
      case FoodNavigatorConst.foodOurBranches:
        return sampleRoute(const FoodOurBranchesPage());
      case FoodNavigatorConst.foodAbout:
        return sampleRoute(const FoodAboutAppPage());
      case FoodNavigatorConst.foodConnectWithUs:
        return sampleRoute(FoodContactUsPage());
      case FoodNavigatorConst.foodProfileEdit:
        return sampleRoute(const FoodProfileEditPage());
      case FoodNavigatorConst.foodSettings:
        return sampleRoute(const FoodSettingsPage());
      case FoodNavigatorConst.foodProfileAddCardPage:
        return sampleRoute(const FoodProfileAddCardPage());
      case FoodNavigatorConst.foodChangeLanguage:
        return sampleRoute(const FoodChangeLanguagePage());
      case FoodNavigatorConst.foodNotification:
        return sampleRoute(const FoodNotificationPage());
      case FoodNavigatorConst.foodNotifyItemPage:
        return sampleRoute(const FoodNotificationItemPage());
      case FoodNavigatorConst.foodAddLocationPage:
        return sampleRoute(const FoodAddLocationPage());
      case FoodNavigatorConst.foodEmptyLocationPage:
        return sampleRoute(const FoodEmptyLocationPage());
      case FoodNavigatorConst.foodBasket:
        return sampleRoute(const FoodBasketPage());
      case FoodNavigatorConst.foodOrder:
        return sampleRoute(const FoodOrderView());
      case FoodNavigatorConst.foodMyOrderCard:
        return sampleRoute(const FoodMyOrderCard());
      case FoodNavigatorConst.foodProfileView:
        return sampleRoute(const FoodProfileView());
      case FoodNavigatorConst.allProducts:
        return sampleRoute(AllProdact((args as TopProduct)));
    }
    return null;
  }

  sampleRoute(Widget route) {
    return MaterialPageRoute(builder: (context) => route);
  }
}
