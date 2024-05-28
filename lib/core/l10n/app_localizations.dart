import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_uz.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ru'),
    Locale('uz')
  ];

  /// No description provided for @searchByProduct.
  ///
  /// In en, this message translates to:
  /// **'Search by Product...'**
  String get searchByProduct;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @allProductsAre.
  ///
  /// In en, this message translates to:
  /// **'All products are discounted!'**
  String get allProductsAre;

  /// No description provided for @popularGoods.
  ///
  /// In en, this message translates to:
  /// **'Popular Goods'**
  String get popularGoods;

  /// No description provided for @brands.
  ///
  /// In en, this message translates to:
  /// **'Brands'**
  String get brands;

  /// No description provided for @weRecommendFor.
  ///
  /// In en, this message translates to:
  /// **'We recommend for you'**
  String get weRecommendFor;

  /// No description provided for @changeTheLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change the language'**
  String get changeTheLanguage;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @catalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get catalog;

  /// No description provided for @basket.
  ///
  /// In en, this message translates to:
  /// **'Basket'**
  String get basket;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My orders'**
  String get myOrders;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @selectColor.
  ///
  /// In en, this message translates to:
  /// **'Select color:'**
  String get selectColor;

  /// No description provided for @selectMemory.
  ///
  /// In en, this message translates to:
  /// **'Select memory:'**
  String get selectMemory;

  /// No description provided for @installmentPayment.
  ///
  /// In en, this message translates to:
  /// **'Installment payment'**
  String get installmentPayment;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @initialPayment.
  ///
  /// In en, this message translates to:
  /// **'Initial payment'**
  String get initialPayment;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @monthlyPayment.
  ///
  /// In en, this message translates to:
  /// **'Monthly payment'**
  String get monthlyPayment;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'total amount'**
  String get totalAmount;

  /// No description provided for @arrange.
  ///
  /// In en, this message translates to:
  /// **'Arrange'**
  String get arrange;

  /// No description provided for @deliveryYes.
  ///
  /// In en, this message translates to:
  /// **'Delivery - Yes,'**
  String get deliveryYes;

  /// No description provided for @forFree.
  ///
  /// In en, this message translates to:
  /// **'for free'**
  String get forFree;

  /// No description provided for @pickupYes.
  ///
  /// In en, this message translates to:
  /// **'Pickup - Yes'**
  String get pickupYes;

  /// No description provided for @paymentMethodsHistoryPay.
  ///
  /// In en, this message translates to:
  /// **'Payment methods - HistoryPay'**
  String get paymentMethodsHistoryPay;

  /// No description provided for @returnOfGoods10Days.
  ///
  /// In en, this message translates to:
  /// **'Return of goods - 10 days\n'**
  String get returnOfGoods10Days;

  /// No description provided for @viewReturnPolicy.
  ///
  /// In en, this message translates to:
  /// **'View return policy'**
  String get viewReturnPolicy;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @characteristicsAboutTheProduct.
  ///
  /// In en, this message translates to:
  /// **'Characteristics about the product'**
  String get characteristicsAboutTheProduct;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @type.
  ///
  /// In en, this message translates to:
  /// **'Type:'**
  String get type;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version:'**
  String get version;

  /// No description provided for @versionOS.
  ///
  /// In en, this message translates to:
  /// **'Version ОС'**
  String get versionOS;

  /// No description provided for @builtInMemoryCapacity.
  ///
  /// In en, this message translates to:
  /// **'Built-in memory capacity:'**
  String get builtInMemoryCapacity;

  /// No description provided for @mainCameras.
  ///
  /// In en, this message translates to:
  /// **'Main cameras:'**
  String get mainCameras;

  /// No description provided for @frontCamera.
  ///
  /// In en, this message translates to:
  /// **'Front-camera :'**
  String get frontCamera;

  /// No description provided for @mainCamera.
  ///
  /// In en, this message translates to:
  /// **'Main camera'**
  String get mainCamera;

  /// No description provided for @randomAccessMemory.
  ///
  /// In en, this message translates to:
  /// **'Random access memory :'**
  String get randomAccessMemory;

  /// No description provided for @allCharacteristics.
  ///
  /// In en, this message translates to:
  /// **'All characteristics'**
  String get allCharacteristics;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price:'**
  String get price;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to cart'**
  String get addToCart;

  /// No description provided for @featuringContouredEdgesANewAction.
  ///
  /// In en, this message translates to:
  /// **'Featuring new contoured edges, a new action button, a powerful camera upgrade, and a durable and lightweight titanium body, the A17 Pro brings next-level performance and mobile gaming. CUPERTINO, CALIFORNIA'**
  String get featuringContouredEdgesANewAction;

  /// No description provided for @allReviews.
  ///
  /// In en, this message translates to:
  /// **'All reviews'**
  String get allReviews;

  /// No description provided for @yourCart.
  ///
  /// In en, this message translates to:
  /// **'Your cart'**
  String get yourCart;

  /// No description provided for @chooseAll.
  ///
  /// In en, this message translates to:
  /// **'Choose all'**
  String get chooseAll;

  /// No description provided for @deleteEverything.
  ///
  /// In en, this message translates to:
  /// **'Delete everything'**
  String get deleteEverything;

  /// No description provided for @standard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get standard;

  /// No description provided for @inInstallments.
  ///
  /// In en, this message translates to:
  /// **'In installments'**
  String get inInstallments;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @arrangeAnOrder.
  ///
  /// In en, this message translates to:
  /// **'Arrange an order'**
  String get arrangeAnOrder;

  /// No description provided for @officializeTheOrder.
  ///
  /// In en, this message translates to:
  /// **'Officialize the order'**
  String get officializeTheOrder;

  /// No description provided for @enterYourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get enterYourFirstName;

  /// No description provided for @enterThePhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter the phone number'**
  String get enterThePhoneNumber;

  /// No description provided for @chooseMethodOfAcceptance.
  ///
  /// In en, this message translates to:
  /// **'Choose a method of acceptance'**
  String get chooseMethodOfAcceptance;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @takeAway.
  ///
  /// In en, this message translates to:
  /// **'Take away'**
  String get takeAway;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @enterNewAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter a new address'**
  String get enterNewAddress;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get office;

  /// No description provided for @modify.
  ///
  /// In en, this message translates to:
  /// **'Modify'**
  String get modify;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact:'**
  String get contact;

  /// No description provided for @deliveryDateAndTime.
  ///
  /// In en, this message translates to:
  /// **'Delivery date and Time'**
  String get deliveryDateAndTime;

  /// No description provided for @standardOnWorkdays1_3.
  ///
  /// In en, this message translates to:
  /// **'Standard on workdays 1-3'**
  String get standardOnWorkdays1_3;

  /// No description provided for @chooseThePaymentType.
  ///
  /// In en, this message translates to:
  /// **'Choose the payment type'**
  String get chooseThePaymentType;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @byCard.
  ///
  /// In en, this message translates to:
  /// **'By card'**
  String get byCard;

  /// No description provided for @iAgreeWithTermsPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'I agree with the Terms and Privacy Policy'**
  String get iAgreeWithTermsPrivacyPolicy;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @orderAccepted.
  ///
  /// In en, this message translates to:
  /// **'Order accepted'**
  String get orderAccepted;

  /// No description provided for @yourOrderHasBeenConfirmedOnTheDay.
  ///
  /// In en, this message translates to:
  /// **'Your order has been confirmed. On the day of delivery, you will receive an SMS with a code. Please show the code to receive the order.\n'**
  String get yourOrderHasBeenConfirmedOnTheDay;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @yourFavorites.
  ///
  /// In en, this message translates to:
  /// **'Your favorites'**
  String get yourFavorites;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @exclusiveDiscount.
  ///
  /// In en, this message translates to:
  /// **'Exclusive 40% discount'**
  String get exclusiveDiscount;

  /// No description provided for @theOrderHasAlreadyArrived.
  ///
  /// In en, this message translates to:
  /// **'The order has already arrived'**
  String get theOrderHasAlreadyArrived;

  /// No description provided for @successfulOrder.
  ///
  /// In en, this message translates to:
  /// **'Successful order'**
  String get successfulOrder;

  /// No description provided for @addressUpdated.
  ///
  /// In en, this message translates to:
  /// **'Address updated'**
  String get addressUpdated;

  /// No description provided for @apple.
  ///
  /// In en, this message translates to:
  /// **'Apple'**
  String get apple;

  /// No description provided for @samsung.
  ///
  /// In en, this message translates to:
  /// **'Samsung'**
  String get samsung;

  /// No description provided for @xiaomiMi.
  ///
  /// In en, this message translates to:
  /// **'Xiaomi mi'**
  String get xiaomiMi;

  /// No description provided for @tablets.
  ///
  /// In en, this message translates to:
  /// **'Tablets'**
  String get tablets;

  /// No description provided for @airPods.
  ///
  /// In en, this message translates to:
  /// **'AirPods'**
  String get airPods;

  /// No description provided for @phoneCases.
  ///
  /// In en, this message translates to:
  /// **'Phone cases'**
  String get phoneCases;

  /// No description provided for @batteries.
  ///
  /// In en, this message translates to:
  /// **'Batteries'**
  String get batteries;

  /// No description provided for @phoneStand.
  ///
  /// In en, this message translates to:
  /// **'Phone stand'**
  String get phoneStand;

  /// No description provided for @chargingDevice.
  ///
  /// In en, this message translates to:
  /// **'Charging device'**
  String get chargingDevice;

  /// No description provided for @computerAccessory.
  ///
  /// In en, this message translates to:
  /// **'Computer accessory'**
  String get computerAccessory;

  /// No description provided for @headphones.
  ///
  /// In en, this message translates to:
  /// **'Headphones'**
  String get headphones;

  /// No description provided for @watches.
  ///
  /// In en, this message translates to:
  /// **'Watches'**
  String get watches;

  /// No description provided for @sort.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sort;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @phoneAccessories.
  ///
  /// In en, this message translates to:
  /// **'Phone accessories'**
  String get phoneAccessories;

  /// No description provided for @honor.
  ///
  /// In en, this message translates to:
  /// **'Honor'**
  String get honor;

  /// No description provided for @loadAdditional.
  ///
  /// In en, this message translates to:
  /// **'Load additional'**
  String get loadAdditional;

  /// No description provided for @from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get from;

  /// No description provided for @to.
  ///
  /// In en, this message translates to:
  /// **'to'**
  String get to;

  /// No description provided for @oppo.
  ///
  /// In en, this message translates to:
  /// **'Oppo'**
  String get oppo;

  /// No description provided for @nokia.
  ///
  /// In en, this message translates to:
  /// **'Nokia'**
  String get nokia;

  /// No description provided for @xiaomi.
  ///
  /// In en, this message translates to:
  /// **'Xiaomi'**
  String get xiaomi;

  /// No description provided for @colors.
  ///
  /// In en, this message translates to:
  /// **'Colors:'**
  String get colors;

  /// No description provided for @gray.
  ///
  /// In en, this message translates to:
  /// **'Gray'**
  String get gray;

  /// No description provided for @black.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get black;

  /// No description provided for @white.
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get white;

  /// No description provided for @orange.
  ///
  /// In en, this message translates to:
  /// **'Orange'**
  String get orange;

  /// No description provided for @blue.
  ///
  /// In en, this message translates to:
  /// **'Blue'**
  String get blue;

  /// No description provided for @clearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get clearFilters;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @byDefault.
  ///
  /// In en, this message translates to:
  /// **'By default'**
  String get byDefault;

  /// No description provided for @fromLowToHigh.
  ///
  /// In en, this message translates to:
  /// **'From low to high'**
  String get fromLowToHigh;

  /// No description provided for @fromHighToLow.
  ///
  /// In en, this message translates to:
  /// **'From high to low'**
  String get fromHighToLow;

  /// No description provided for @byNovelty.
  ///
  /// In en, this message translates to:
  /// **'By Novelty'**
  String get byNovelty;

  /// No description provided for @byDiscounts.
  ///
  /// In en, this message translates to:
  /// **'By discounts'**
  String get byDiscounts;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @brandsApplePhones.
  ///
  /// In en, this message translates to:
  /// **'Brands Apple phones'**
  String get brandsApplePhones;

  /// No description provided for @enteringANewAddress.
  ///
  /// In en, this message translates to:
  /// **'Entering a new address'**
  String get enteringANewAddress;

  /// No description provided for @region.
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get region;

  /// No description provided for @selectTheRegion.
  ///
  /// In en, this message translates to:
  /// **'Select the region'**
  String get selectTheRegion;

  /// No description provided for @district.
  ///
  /// In en, this message translates to:
  /// **'District'**
  String get district;

  /// No description provided for @selectADistrict.
  ///
  /// In en, this message translates to:
  /// **'Select a district'**
  String get selectADistrict;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get street;

  /// No description provided for @chukursayMasterShirin.
  ///
  /// In en, this message translates to:
  /// **'Chukursay master Shirin'**
  String get chukursayMasterShirin;

  /// No description provided for @house.
  ///
  /// In en, this message translates to:
  /// **'House'**
  String get house;

  /// No description provided for @floor.
  ///
  /// In en, this message translates to:
  /// **'Floor'**
  String get floor;

  /// No description provided for @corridor.
  ///
  /// In en, this message translates to:
  /// **'Corridor'**
  String get corridor;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @areAvailable.
  ///
  /// In en, this message translates to:
  /// **'are available'**
  String get areAvailable;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'more'**
  String get more;

  /// No description provided for @people.
  ///
  /// In en, this message translates to:
  /// **'people'**
  String get people;

  /// No description provided for @toTheCart.
  ///
  /// In en, this message translates to:
  /// **'To the cart'**
  String get toTheCart;

  /// No description provided for @ramCapacity.
  ///
  /// In en, this message translates to:
  /// **'RAM capacity'**
  String get ramCapacity;

  /// No description provided for @simCard.
  ///
  /// In en, this message translates to:
  /// **'SIM card'**
  String get simCard;

  /// No description provided for @noBasketYet.
  ///
  /// In en, this message translates to:
  /// **'No basket yet'**
  String get noBasketYet;

  /// No description provided for @apartment.
  ///
  /// In en, this message translates to:
  /// **'apartment'**
  String get apartment;

  /// No description provided for @noNotificationsYet.
  ///
  /// In en, this message translates to:
  /// **'No notifications yet'**
  String get noNotificationsYet;

  /// No description provided for @contactUs.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contactUs;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @surname.
  ///
  /// In en, this message translates to:
  /// **'SurName'**
  String get surname;

  /// No description provided for @lastSearch.
  ///
  /// In en, this message translates to:
  /// **'Last search'**
  String get lastSearch;

  /// No description provided for @changeProfilePicture.
  ///
  /// In en, this message translates to:
  /// **'Change profile picture'**
  String get changeProfilePicture;

  /// No description provided for @you_are_buying_products.
  ///
  /// In en, this message translates to:
  /// **'You are buying %d products'**
  String get you_are_buying_products;

  /// No description provided for @product_info.
  ///
  /// In en, this message translates to:
  /// **'Product Information'**
  String get product_info;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @weOfferThe.
  ///
  /// In en, this message translates to:
  /// **'We offer the best product for you and your family'**
  String get weOfferThe;

  /// No description provided for @chooseTheProduct.
  ///
  /// In en, this message translates to:
  /// **'Choose the product you like and buy it'**
  String get chooseTheProduct;

  /// No description provided for @payInInstallments.
  ///
  /// In en, this message translates to:
  /// **'Pay in installments by card in our online store.'**
  String get payInInstallments;

  /// No description provided for @begin.
  ///
  /// In en, this message translates to:
  /// **'Begin'**
  String get begin;

  /// No description provided for @theServicesOf.
  ///
  /// In en, this message translates to:
  /// **'The services of free delivery of your purchased products are available throughout Uzbekistan.'**
  String get theServicesOf;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @enterPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Enter the phone number'**
  String get enterPhoneNumber;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Enter the password'**
  String get enterPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// No description provided for @dontHaveAn.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get dontHaveAn;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @iAgreeTerms.
  ///
  /// In en, this message translates to:
  /// **'I agree to the terms of use'**
  String get iAgreeTerms;

  /// No description provided for @enterYourName.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @theProductsYouPurchasedCanBe.
  ///
  /// In en, this message translates to:
  /// **'The products you purchased can be delivered for free across Uzbekistan.'**
  String get theProductsYouPurchasedCanBe;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @internetIsUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Internet is unavailable'**
  String get internetIsUnavailable;

  /// No description provided for @pleaseCheckYourInternet.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection and try again'**
  String get pleaseCheckYourInternet;

  /// No description provided for @refreshThePage.
  ///
  /// In en, this message translates to:
  /// **'Refresh the page'**
  String get refreshThePage;

  /// No description provided for @paymentFailed.
  ///
  /// In en, this message translates to:
  /// **'Payment failed'**
  String get paymentFailed;

  /// No description provided for @yourOrderIsNotConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Your order is not confirmed, please try again'**
  String get yourOrderIsNotConfirmed;

  /// No description provided for @noSearchResults.
  ///
  /// In en, this message translates to:
  /// **'No search results'**
  String get noSearchResults;

  /// No description provided for @noSearchResultsWeCannotFind.
  ///
  /// In en, this message translates to:
  /// **'No search results, we cannot find the product you are looking for.'**
  String get noSearchResultsWeCannotFind;

  /// No description provided for @toMain.
  ///
  /// In en, this message translates to:
  /// **'To main'**
  String get toMain;

  /// No description provided for @enter.
  ///
  /// In en, this message translates to:
  /// **'Enter'**
  String get enter;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @dontHaveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAnAccount;

  /// No description provided for @enterYourFirstNameAndLastName.
  ///
  /// In en, this message translates to:
  /// **'  Enter your first name and last name'**
  String get enterYourFirstNameAndLastName;

  /// No description provided for @iAgreeToTheTermsofuse.
  ///
  /// In en, this message translates to:
  /// **'Enter the phone number'**
  String get iAgreeToTheTermsofuse;

  /// No description provided for @nameSurname.
  ///
  /// In en, this message translates to:
  /// **'Name Surname'**
  String get nameSurname;

  /// No description provided for @resendTheCode.
  ///
  /// In en, this message translates to:
  /// **'Resend the code'**
  String get resendTheCode;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @wrongCodePleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Wrong code, please try again.'**
  String get wrongCodePleaseTryAgain;

  /// No description provided for @passwordRecovery.
  ///
  /// In en, this message translates to:
  /// **'Password recovery'**
  String get passwordRecovery;

  /// No description provided for @passwordUpdate.
  ///
  /// In en, this message translates to:
  /// **'Password update'**
  String get passwordUpdate;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @enterThePassword.
  ///
  /// In en, this message translates to:
  /// **'Enter the password'**
  String get enterThePassword;

  /// No description provided for @reEnterTheNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Re-enter the new password'**
  String get reEnterTheNewPassword;

  /// No description provided for @confirmation.
  ///
  /// In en, this message translates to:
  /// **'Confirmation'**
  String get confirmation;

  /// No description provided for @weHaveSendAVer.
  ///
  /// In en, this message translates to:
  /// **'We have sent a verification\n'**
  String get weHaveSendAVer;

  /// No description provided for @codeToYourPhone.
  ///
  /// In en, this message translates to:
  /// **'code to your phone '**
  String get codeToYourPhone;

  /// No description provided for @verification.
  ///
  /// In en, this message translates to:
  /// **'Verification'**
  String get verification;

  /// No description provided for @startShoppingByConveniently.
  ///
  /// In en, this message translates to:
  /// **'Start shopping by conveniently spreading your purchases with a flexible installment plan, and enjoy the items in just a few minutes.'**
  String get startShoppingByConveniently;

  /// No description provided for @enterPassportInformation.
  ///
  /// In en, this message translates to:
  /// **'Enter passport information'**
  String get enterPassportInformation;

  /// No description provided for @pleaseEnterPassportInformationCorrectly.
  ///
  /// In en, this message translates to:
  /// **'Please enter passport information correctly, as it is crucial for obtaining your limit.'**
  String get pleaseEnterPassportInformationCorrectly;

  /// No description provided for @enterTheDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter the details of your loved ones'**
  String get enterTheDetails;

  /// No description provided for @ifWeCannotReachYou.
  ///
  /// In en, this message translates to:
  /// **'If we cannot reach you, please provide the contact information of two people close to you for communication.'**
  String get ifWeCannotReachYou;

  /// No description provided for @enterYourCardDetails.
  ///
  /// In en, this message translates to:
  /// **'Enter your card details'**
  String get enterYourCardDetails;

  /// No description provided for @enterYourPrimaryIcomeYouWill.
  ///
  /// In en, this message translates to:
  /// **'Enter the primary income you will use to get the installment payment limit.'**
  String get enterYourPrimaryIcomeYouWill;

  /// No description provided for @continuee.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continuee;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get personalInformation;

  /// No description provided for @passportSeries.
  ///
  /// In en, this message translates to:
  /// **'Passport series'**
  String get passportSeries;

  /// No description provided for @passportNumber.
  ///
  /// In en, this message translates to:
  /// **'Passport number'**
  String get passportNumber;

  /// No description provided for @jSHSHR.
  ///
  /// In en, this message translates to:
  /// **'JSHSHR'**
  String get jSHSHR;

  /// No description provided for @frontSideOfThePassport.
  ///
  /// In en, this message translates to:
  /// **'Front side of the passport'**
  String get frontSideOfThePassport;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// No description provided for @selfieWithAPassport.
  ///
  /// In en, this message translates to:
  /// **'Selfie with a passport'**
  String get selfieWithAPassport;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get cardNumber;

  /// No description provided for @term.
  ///
  /// In en, this message translates to:
  /// **'term'**
  String get term;

  /// No description provided for @cardName.
  ///
  /// In en, this message translates to:
  /// **'Card name'**
  String get cardName;

  /// No description provided for @silkRoad.
  ///
  /// In en, this message translates to:
  /// **'Silk Road'**
  String get silkRoad;

  /// No description provided for @iAgreeWithTheTermsAnd.
  ///
  /// In en, this message translates to:
  /// **'I agree with the Terms and Privacy Policy'**
  String get iAgreeWithTheTermsAnd;

  /// No description provided for @congYouHaveSuccPassedIden.
  ///
  /// In en, this message translates to:
  /// **'Congratulations, you have successfully passed identification'**
  String get congYouHaveSuccPassedIden;

  /// No description provided for @enterYourPassportAndPhoto.
  ///
  /// In en, this message translates to:
  /// **'Enter your passport and photo'**
  String get enterYourPassportAndPhoto;

  /// No description provided for @pleasePayAttentiontoThePhotoQuality.
  ///
  /// In en, this message translates to:
  /// **'Please pay attention to the photo quality, this information is very important for obtaining your limit.'**
  String get pleasePayAttentiontoThePhotoQuality;

  /// No description provided for @enterInformYourRelatives.
  ///
  /// In en, this message translates to:
  /// **'Enter the information of your relatives'**
  String get enterInformYourRelatives;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @byLoggingIn.
  ///
  /// In en, this message translates to:
  /// **'By logging in, you will have access to many opportunities'**
  String get byLoggingIn;

  /// No description provided for @myOrder.
  ///
  /// In en, this message translates to:
  /// **'My Order'**
  String get myOrder;

  /// No description provided for @myCards.
  ///
  /// In en, this message translates to:
  /// **'My cards'**
  String get myCards;

  /// No description provided for @ourBranches.
  ///
  /// In en, this message translates to:
  /// **'Our branches'**
  String get ourBranches;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @connectWithUs.
  ///
  /// In en, this message translates to:
  /// **'Connect with us'**
  String get connectWithUs;

  /// No description provided for @aboutTheApplication.
  ///
  /// In en, this message translates to:
  /// **'About the application'**
  String get aboutTheApplication;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balans:'**
  String get balance;

  /// No description provided for @doYouWantToExit.
  ///
  /// In en, this message translates to:
  /// **'Do you want to exit this application?'**
  String get doYouWantToExit;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @cardNotAdded.
  ///
  /// In en, this message translates to:
  /// **'Card not added'**
  String get cardNotAdded;

  /// No description provided for @addACard.
  ///
  /// In en, this message translates to:
  /// **'+ Add a card'**
  String get addACard;

  /// No description provided for @cardDate.
  ///
  /// In en, this message translates to:
  /// **'Card date'**
  String get cardDate;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change language'**
  String get changeLanguage;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @ifyouHaveAnyQuestions.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions?'**
  String get ifyouHaveAnyQuestions;

  /// No description provided for @takeAPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a photo'**
  String get takeAPhoto;

  /// No description provided for @sum.
  ///
  /// In en, this message translates to:
  /// **'sum'**
  String get sum;

  /// No description provided for @underConsideration.
  ///
  /// In en, this message translates to:
  /// **'Under consideration'**
  String get underConsideration;

  /// No description provided for @order.
  ///
  /// In en, this message translates to:
  /// **'Order'**
  String get order;

  /// No description provided for @paymentInfo.
  ///
  /// In en, this message translates to:
  /// **'Payment information'**
  String get paymentInfo;

  /// No description provided for @pc.
  ///
  /// In en, this message translates to:
  /// **'pc'**
  String get pc;

  /// No description provided for @agreement.
  ///
  /// In en, this message translates to:
  /// **'Agreement'**
  String get agreement;

  /// No description provided for @remainingMonths.
  ///
  /// In en, this message translates to:
  /// **'Remaining months:'**
  String get remainingMonths;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @notCompleted.
  ///
  /// In en, this message translates to:
  /// **'Not completed'**
  String get notCompleted;

  /// No description provided for @noClosedContracts.
  ///
  /// In en, this message translates to:
  /// **'There are no closed contracts'**
  String get noClosedContracts;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @productPrice.
  ///
  /// In en, this message translates to:
  /// **'Product price'**
  String get productPrice;

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'Day'**
  String get day;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @receiver.
  ///
  /// In en, this message translates to:
  /// **'Receiver'**
  String get receiver;

  /// No description provided for @exitApp.
  ///
  /// In en, this message translates to:
  /// **'Exit the application'**
  String get exitApp;

  /// No description provided for @moreAboutProduct.
  ///
  /// In en, this message translates to:
  /// **'More About Product'**
  String get moreAboutProduct;

  /// No description provided for @composition.
  ///
  /// In en, this message translates to:
  /// **'Composition'**
  String get composition;

  /// No description provided for @similarProducts.
  ///
  /// In en, this message translates to:
  /// **'Similar Products'**
  String get similarProducts;

  /// No description provided for @by_logging_in.
  ///
  /// In en, this message translates to:
  /// **'By logging in, you gain access to many opportunities.'**
  String get by_logging_in;

  /// No description provided for @whats_your_name.
  ///
  /// In en, this message translates to:
  /// **'What is your name?'**
  String get whats_your_name;

  /// No description provided for @unfinished.
  ///
  /// In en, this message translates to:
  /// **'Unfinished'**
  String get unfinished;

  /// No description provided for @status_incomplete.
  ///
  /// In en, this message translates to:
  /// **'Incomplete'**
  String get status_incomplete;

  /// No description provided for @new_arrivals.
  ///
  /// In en, this message translates to:
  /// **'New arrivals'**
  String get new_arrivals;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ru', 'uz'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ru': return AppLocalizationsRu();
    case 'uz': return AppLocalizationsUz();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
