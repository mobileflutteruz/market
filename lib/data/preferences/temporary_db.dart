import 'package:flutter/material.dart';
import '../../core/constants/constants.dart';
import '../../core/utils/app_options.dart';


Map<String, Color> filterColors = {
  "Grey": Colors.grey,
  "Black": ColorConstants.c000000,
  "White": Colors.white,
  "Orange": Colors.orange,
  "Blue": Colors.blue,
  "Purple": Colors.purple,
};

Map<String, String> brands = {
  "Apple": "",
  "Samsung": "",
  "Xiaomi mi": "",
  "Tablets": "",
  "Air pods": "",
  "Phone covers": "",
  "Batteries": "",
  "Phone stand": "",
  "Charger": "",
  "Computer accessory": "",
  "Headphones": "",
  "Watch": "",
};

List<String> memoryCapacities = [
  "4 GB",
  "8 GB",
  "16 GB",
  "32 GB",
  "64 GB",
  "128 GB",
  "256 GB",
  "512 GB",
  "1 TB",
];

List<String> ramCapacities = [
  "2 GB",
  "4 GB",
  "8 GB",
  "16 GB",
];

List<String> versionOS = [
  "Android 12",
  "Android 13",
  "iOS 15",
  "iOS 16",
  "iOS 17",
  "MIUI 13",
];
List<String> simCards = ["2 SIM  Dual", "1 SIM", "eSIM"];

List<String> frontCamera = [
  "16 MP",
  "12 MP",
  "24 MP",
  "32 MP",
  "48 MP",
  "50 MP",
  "64 MP",
];

List<String> screenRefreshs = [
  "120 Gs",
  "60 Gs",
  "40 Gs",
  "90 Gs",
];
List<String> sortValues = [
  "По умолчанию",
  "От низкой к высокой",
  "От высокой к низкой",
  "По новинкам",
  "По скидкам",
];
final List<String> lastSearches = [
  "Apple  14 Pro max",
  "Samsung Galaxy  S23 ",
  "Xiaomi mi 11 lite",
];
final List<String> lastFoodSearches = [
  "Шампун Dove Hair Therapt",
  "Молоко Lactel 1% тетра ",
  "Шампун Dove Hair Therapt",
];
final List<String> popularSearchesF = [
  "Шампун Dove Hair Therapt",
  "Молоко Lactel 1% тетра ",
  "Шампун Dove Hair Therapt",
];

final List<String> installmentsPaymentMonths = [
  "3 ",
  "6",
  "12",
  "24",
];

final List<String> productColorImages = [
  "https://market.beeline.uz/api/assets/productImages/45974330.jpeg",
  "https://market.beeline.uz/api/assets/productImages/61579122.jpeg",
  "https://market.beeline.uz/api/assets/productImages/63268a3f390d88e4c41f2747bfa2f1b5f87db2022092114121356378sGrQ9oVwR7.png.webp",
  "https://market.beeline.uz/api/assets/productImages/46287639.jpeg",
  "https://market.beeline.uz/api/assets/productImages/46287639.jpeg",
];

Map<String, String> characteristicsProduct = {
  "Тип:": "Apple",
  "Версия: ": "",
  "Объем встроенной памяти : ": "256 ГБ",
  "Основных камер :": "3",
  "Фронтальная камера :": "12 МП",
  "Основная камера :": "48 МП",
  "Объем встроенной памяти:": "256 ГБ",
  "Оперативной памяти :": "6 ГБ",
  "1 Тип: ": "Apple",
  "1 Версия:  ": "",
  "1 Объем  встроенной памяти : ": "256 ГБ",
  "1 Основных  камер :": "3",
  "1 Фронтальная  камера :": "12 МП",
  "1 Основная  камера :": "48 МП",
  "1 Объем  встроенной памяти:": "256 ГБ",
  "1 Оперативной  памяти :": "6 ГБ",
};

final List<String> notificationTitles = [
  "Эксклюзивной скидкой 40%",
  "Заказ уже прибыл",
  "Успешный заказ",
  "Адрес обновлен",
];

const String loremIpsum =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";

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

final List<String> onboardingTitles = [
  "Мы предлагаем лучший продукт для вас и вашей семьи",
  "Выберите понравившийся товар и купите его",
  "Оплачивайте рассрочку картой в нашем интернет-магазине.",
];

final List<String> onboardingDescriptions = [
  "Xarid qilingan maxsulotlaringizni o’zbekiston bo’ylab bepul yetkazib berish xizmatlari mavjud.",
  "Xarid qilingan maxsulotlaringizni o’zbekiston bo’ylab bepul yetkazib berish xizmatlari mavjud.",
  "Xarid qilingan maxsulotlaringizni o’zbekiston bo’ylab bepul yetkazib berish xizmatlari mavjud.",
];

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
final List<String> imgList = [
  FoodImages.lactel,
  FoodImages.lactel,
  FoodImages.lactel,
];

 final Map foodItems = {
      "": [
        const Color(0xFFE9E7FD),
      FoodImages,
        FoodImages.foydali,
      ],
      "Молочные продукты, яйца": [
        const Color(0xFFFFF0E1),
         "",
        FoodImages.milk
      ],
      "Овощи и фрукти": [
        const Color(0xFFDDF6E8),
        "",
        FoodImages.fruits,
      ],
      "Мясо, птица": [
        const Color(0xFFD0F1FB),
        "",
        FoodImages.meet,
      ],
      "Хлеб и выпечка": [const Color(0xFFE2EEFD), "", FoodImages.bread],
      "Рыба": [const Color(0xFFFFE2E3), "", FoodImages.fish],
      "Сыры": [const Color(0xFFE9E7FD), "", FoodImages.sir],
      "Бакалея": [
        const Color(0xFFFFF0E1),
        "",
        FoodImages.grocery,
      ],
      "Сладости": [
        const Color(0xFFDDF6E8),
        "",
        FoodImages.sweets,
      ],
      "Замарозка": [const Color(0xFFD0F1FB), "", FoodImages.icecream],
      "Вода, соки, напитки": [
        const Color(0xFFE2EEFD),
        "",
        FoodImages.drink,
      ],
      "Колбаса и сосиски": [
        const Color(0xFFFFE2E3),
        "",
        FoodImages.sausage,
      ],
      "Консервы, соусы, мойанез": [
        const Color(0xFFE9E7FD),
        "",
        FoodImages.sous
      ],
      "Чай, кофе, какао": [const Color(0xFFFFF0E1), "", FoodImages.tea],
    };

int currentLocaleIndex = AppOptions.instance.locale == const Locale("uz")
    ? 0
    : AppOptions.instance.locale == const Locale("ru")
        ? 1
        : 2;
