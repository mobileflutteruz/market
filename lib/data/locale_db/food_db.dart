import 'package:karmango/domain/model/category/category_model.dart';
import 'package:karmango/domain/model/product/product_model.dart';
import 'package:karmango/domain/model/user/user_model.dart';

UserModel? foodUser;

// final List<CategoryModel> foodCategories = List.generate(
//   14,
//   (index) => CategoryModel(
//     name: foodCategoryNames[index],
//     image: foodCategoryImages[index],
//     products: foodCategoryProducts[index],
//   ),
// );

List<String> foodCategoryImages = [
  "assets/images/food/foydali.png",
  "assets/images/food/milk.png",
  "assets/images/food/meva.png",
  "assets/images/food/meet.png",
  "assets/images/food/bread.png",
  "assets/images/food/baliq.png",
  "assets/images/food/sir.png",
  "assets/images/food/grocery.png",
  "assets/images/food/sweets.png",
  "assets/images/food/icecream.png",
  "assets/images/food/drink.png",
  "assets/images/food/sausage.png",
  "assets/images/food/sous.png",
  "assets/images/food/tea.png",
];
List<String> foodCategoryNames = [
  "",
  "Молочные продукты, яйца",
  "Овощи и фрукти",
  "Мясо, птица",
  "Хлеб и выпечка",
  "Рыба",
  "Сыры",
  "Бакалея",
  "Сладости",
  "Замарозка",
  "Вода, соки, напитки",
  "Колбаса и сосиски",
  "Консервы, соусы, мойанез",
  " Чай, кофе, какао",
];
List<List<DemoProductModel>> foodCategoryProducts = [
  [foydali],
  [milk],
  [meva],
  [meet],
  [bread],
  [fish],
  [sir],
  [makaron],
  [sweet],
  [icecream],
  [drink],
  [kolbasa],
  [sous],
  [tea]
];

final List<DemoProductModel> recommendProducts = [
  bread,
  tea,
  makaron,
  sous,
];
final List<DemoProductModel> newProducts = [
  kolbasa,
  drink,
  meva,
  fish,
];

final List<DemoProductModel> recommendProducts2 = [
  sweet,
  meet,
  bread,
  milk,
  meva,
];

final List<DemoProductModel> discountedProducts = [sweet, meet, bread, milk, meva];

final List<DemoProductModel> allProducts = [
  foydali,
  milk,
  meva,
  meet,
  bread,
  fish,
  sir,
  makaron,
  sweet,
  icecream,
  drink,
  kolbasa,
  sous,
  tea,
];

///Bed Bedroom
DemoProductModel foydali = DemoProductModel(
    id: 2001,
    category: "Foydali",
    price: 0,
    description: """     """,
    images: [
      "assets/temp_images/food_category/foydali/foydali.png",
    ],
    name: 'foydali',
    characteristicsProduct: {},
    avialableProductCount: 123,
    isNew: true,
    discountPercent: 15);

DemoProductModel milk = DemoProductModel(
  id: 2002,
  category: "milk",
  price: 8227,
  discountPercent: 15,
  isNew: true,
  description:
      """ Mahsulotning texnik tavsiflari, etkazib berish hajmi, ishlab chiqarilgan mamlakati, tashqi ko'rinishi va rangi haqidagi ma'lumotlar faqat ma'lumot uchun mo'ljallangan va nashr etilgan paytda mavjud bo'lgan eng so'nggi ma'lumotlarga asoslanadi. """,
  images: [
    "assets/temp_images/food_category/milk/1.png",
    "assets/temp_images/food_category/milk/2.png",
  ],
  name: 'Молоко стерилизованное',
  characteristicsProduct: {},
  avialableProductCount: 99,
);

DemoProductModel meva = DemoProductModel(
  id: 2003,
  category: "meva",
  price: 200000,
  description: """   """,
  images: [
    "assets/temp_images/food_category/frukti/1.png",
    "assets/temp_images/food_category/frukti/2.png",
    "assets/temp_images/food_category/frukti/3.png",
  ],
  name: 'Banana',
  characteristicsProduct: {},
  avialableProductCount: 19,
);

///meet
DemoProductModel meet = DemoProductModel(
  id: 2004,
  category: "meet",
  price: 78000,
  discountPercent: 12,
  description:
      """Для покупки товара в нашем интернет-магазине выберите понравившийся товар и добавьте его в корзину. Далее перейдите в Корзину и нажмите на «Оформить заказ» или «Быстрый заказ».
Когда оформляете быстрый заказ, напишите ФИО, телефон и e-mail. Вам перезвонит менеджер и уточнит условия заказа. По результатам разговора вам придет подтверждение оформления товара на почту или через СМС. Теперь останется только ждать доставки и радоваться новой покупке.""",
  images: [
    "assets/temp_images/food_category/meet/1.png",
    "assets/temp_images/food_category/meet/2.png",
  ],
  name: 'Meet',
  characteristicsProduct: {},
  avialableProductCount: 1,
);

/// bread
DemoProductModel bread = DemoProductModel(
  id: 2005,
  category: "bread",
  price: 6000,
  description: """    """,
  images: [
    "assets/temp_images/food_category/bread/non.png",
    "assets/temp_images/food_category/bread/non1.png",
  ],
  name: 'Non',
  characteristicsProduct: {},
  avialableProductCount: 1,
);

DemoProductModel fish = DemoProductModel(
  id: 2006,
  category: "fish",
  price: 65000,
  discountPercent: 15,
  description: "" "",
  images: [
    "assets/temp_images/food_category/fish/1.png",
    "assets/temp_images/food_category/fish/2.png",
    "assets/temp_images/food_category/fish/3.png",
  ],
  name: 'Sazan Oltin baliq',
  characteristicsProduct: {},
  avialableProductCount: 12,
);

/// sir
DemoProductModel sir = DemoProductModel(
  id: 2007,
  category: "sir",
  price: 35000,
  description: """ия, а также колёсами для её перемещения по комнате.""",
  images: [
    "assets/temp_images/food_category/sir/1.png",
    "assets/temp_images/food_category/sir/2.png",
  ],
  name: 'Pure Milk Samarqand',
  characteristicsProduct: {},
  avialableProductCount: 98,
);

DemoProductModel makaron = DemoProductModel(
  id: 2008,
  category: "makaron",
  price: 15000,
  description: """ия, а также колёсами для её перемещения по комнате.""",
  images: [
    "assets/temp_images/food_category/makaron/1.png",
    "assets/temp_images/food_category/makaron/2.png",
    "assets/temp_images/food_category/makaron/3.png",
  ],
  name: 'Makron',
  characteristicsProduct: {},
  avialableProductCount: 8,
);

DemoProductModel sweet = DemoProductModel(
  id: 2009,
  category: "sweet",
  price: 41000,
  description: """- это полезное и практичное дополнение в конструкции.""",
  images: [
    "assets/temp_images/food_category/sweet/1.png",
    "assets/temp_images/food_category/sweet/2.png",
  ],
  name: 'Shirinlik',
  characteristicsProduct: {},
  avialableProductCount: 89,
);

/// ice
DemoProductModel icecream = DemoProductModel(
  id: 2010,
  avialableProductCount: 127,
  category: "icecream",
  price: 10000,
  description:
      " тремя великолепными цветами, Tab 16 - это мощный способ выполнять дела и оставаться на связи.",
  images: [
    "assets/temp_images/food_category/icecream/1.png",
    "assets/temp_images/food_category/icecream/2.png",
    "assets/temp_images/food_category/icecream/3.png",
  ],
  characteristicsProduct: {},
  name: 'Тумба прикроватная Квелен Grey Stone',
);

DemoProductModel drink = DemoProductModel(
  id: 2011,
  avialableProductCount: 127,
  category: "drink",
  price: 23000,
  description: "   ",
  images: [
    "assets/temp_images/food_category/drink/1.png",
    "assets/temp_images/food_category/drink/2.png",
  ],
  characteristicsProduct: {},
  name: 'CocaCola Fanta',
);

DemoProductModel kolbasa = DemoProductModel(
  id: 2012,
  avialableProductCount: 127,
  category: "kolbasa",
  price: 45000,
  description:
      "и. Дизайн коллекции гармонично сочетается со стилем минимализм, а также скандинавским и классическим.",
  images: [
    "assets/temp_images/food_category/kolbasa/1.png",
    "assets/temp_images/food_category/kolbasa/2.png",
    "assets/temp_images/food_category/kolbasa/3.png",
  ],
  characteristicsProduct: {},
  name: "Sherin Kolbasalari",
);

/// Soft Furniture
DemoProductModel sous = DemoProductModel(
  id: 2013,
  avialableProductCount: 127,
  category: "sous",
  price: 12500,
  description:
      "Shirinliklarning yog'och tomonidan turli xil singishi bilan bog'liq rang farqi ham mumkin.",
  images: [
    "assets/temp_images/food_category/sous/1.png",
    "assets/temp_images/food_category/sous/2.png",
 
  ],
  characteristicsProduct: {},
  name: "Chig'atoy Mayanezi",
);

DemoProductModel tea = DemoProductModel(
  id: 2014,
  avialableProductCount: 127,
  category: "tea",
  price: 8900,
  description: "Bayce tashkil qilish imkonini beradi.",
  images: [
    "assets/temp_images/food_category/tea/1.png",
    "assets/temp_images/food_category/tea/2.png",
    "assets/temp_images/food_category/tea/3.png",
  ],
  characteristicsProduct: {},
  name: "Bayce Tea 110",
);
