import 'package:flutter/material.dart';
import 'package:karmango/core/constants/image_const.dart';

import '../../core/utils/app_options.dart';

const List regions = [
  "Toshkent shahri",
  "Toshkent viloyati",
  "Farg'ona viloyati",
  "Namangan viloyati",
  "Andijon viloyati",
  "Sirdaryo viloyati",
  "Samarqand viloyati",
  "Qashqadaryo viloyati",
  "Surxondaryo viloyati",
  "Buxoro viloyati",
  "Navoiy viloyati",
  "Xorazm viloyati",
  "Qoraqalpog'iston Respublikasi",
];
const List toshkentDistrict = [
  "Bektemir tumani",
  "Chilonzor tumani",
  "Mirobod tumani",
  "Mirzo Ulug'bek tumani",
  "Olmazor tumani",
  "Sergeli tumani",
  "Shayhontohur tumani",
  "Toshkent tumani",
  "Uchtepa tumani",
  "Yakkasaroy tumani",
  "Yangihayot tumani",
  "Yashnaobod tumani",
  "Yunusobod tumani"
];
final List<String> paymentTypeImages = [
  "assets/images/click.png",
  "assets/images/payme.png",
  "assets/images/uzum.png",
  "assets/images/uzcard.png",
  "assets/images/humo.png",
];
// List<String> languageTexts = <String>['O\'zbek', 'Русский ', 'English'];

Map<String, String> languageItems = {
  "O’zbek tili": ImageConstants.uz,
  "Русский язык": ImageConstants.ru,
  "English": ImageConstants.en,
};

final localization = [
  const Locale("uz"),
  const Locale("ru"),
  const Locale("en"),
];

int currentLocaleIndex = AppOptions.instance.locale == const Locale("uz")
    ? 0
    : AppOptions.instance.locale == const Locale("ru")
        ? 1
        : 2;
