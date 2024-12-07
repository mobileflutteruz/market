import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

part 'text_styles.dart';

part 'icon_constants.dart';



part 'color_const.dart';

part 'app_sizes.dart';

sealed class Constants {
  Constants._();

  /// test
  static const baseUrl = 'karmango.shop.dukan.uz/api';
  static const imageUrl = 'karmango.shop.dukan.uz/api/';

  // static const authUrl = 'https://api.auth.u-code.io';

  /// id
  // static const String shipperId = '4e1c1e9b-bc2e-4ed9-8490-7f693e862a56';
  // static const String projectId = 'a4dc1f1c-d20f-4c1a-abf5-b819076604bc';
  // static const String environmentId = 'dcd76a3d-c71b-4998-9e5c-ab1e783264d0';
  // static const String resourceId = 'a97e8954-5d8e-4469-a241-9a9af2ea2978';
  // static const String apiKey = 'P-JV2nVIRUtgyPO5xRNeYll2mT4F5QG4bS';

  // static const String clientTypeId = '24fd6d7e-c0e7-4029-88cc-2595e9c643d5';
  // static const String companyId = '696c77b5-0ebd-4277-a278-a7343421a32a';
  // static const String expiresAt = '2025-06-23T06:00:10.049Z';
  // static const String roledId = '425486de-89dc-48a7-9fa8-47f7b4eeffcb';

  static GlobalKey<FormState> bottomNavigatorKey = GlobalKey<FormState>();
}

sealed class Urls {
  Urls._();

  /// Auth
  static const String register = "/register";
  static const String activateUser = "/activate-user";
  static const String login = "/login";
  static const String forgotPassword = "/forgot-password";
  static const String changePassword = "/change-password";
  static const String logout = "/logout";
  static const String resendActivation = "/resend-activation";
  static const String getCode = "/insert-code";
  static const String guestEnters = "/guest/enters";
  static const String sendSms = "/Send-sms";
  static const String refreshToken = "/refresh/token";
  static const String insertCode = "/insert-code";

  /// Product
  static const String home = '/HomePage';
  static const String categories = '/category';
  static String productsByCategory(int categoryId) =>
      '/category-products/$categoryId';
  static const String favorite = '/favorite';
  static const String createFavorite = '/favorite/create';

  static String deleteFavorite(int productId) => '/favorite/delete/$productId';

  static String product(int productId) => '/productPage/$productId';
  static String topProduct(int productId) => '/topProduct/$productId';
  static String allCarts = '/cart';
  static String createCart = '/cart/store';
  static String deleteCart({
    required int productId,
  }) =>
      '/cart/delete/$productId';

  static String search() => '/search';
  static String searchCreate() => '/search/create';
  static String addCard() => '/add/Card';
  static String cardDetails() => '/card/Details';
  static String myCards() => '/myCards';
  static String changePersonalInfo() => '/change-personal-info';
  static String completeUserInfo(int number) => '/complete-user-info/$number';
  static String myOrders() => '/myOrder';
  static String myOrderDetail(int orderId) => '/my-order-detail/$orderId';
  static String orderCreate() => '/order/create';
  static String paymentCreateTransaction() => '/payment/create/transaction';
  static String paymentCompleteTransaction() => '/payment/complete/transaction';
  static String orderHistory() => '/order-history';
  static String orderDetail(int orderDetailId) =>
      '/order-detail/$orderDetailId';
  // static String
}
