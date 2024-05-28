import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/presentation/auth/register/components/checkbox_widget.dart';
import 'package:karmango/presentation/location/components/short_text_field.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/constants.dart';


class FoodOrderView extends StatefulWidget {
  const FoodOrderView({super.key});

  @override
  State<FoodOrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<FoodOrderView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  TextEditingController nameController = TextEditingController();
  TextEditingController roomController = TextEditingController();

  TextEditingController homeController = TextEditingController();

  TextEditingController intercomController = TextEditingController();

  TextEditingController floorController = TextEditingController();

  TextEditingController offisController = TextEditingController();

  bool? value = false;
  int buyProducts = 3;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.officializeTheOrder,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppUtils.kGap16,
                  SizedBox(
                    height: 75,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: buyProducts,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 16),
                        width: AppLayout.getWidth(72, context),
                        height: AppLayout.getHeight(80, context),
                        decoration: ShapeDecoration(
                          color: ColorConstants.kGreyOrderBack,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            foodCategoryImages[index + 1],
                            width: AppLayout.getHeight(58, context),
                            height: AppLayout.getHeight(56, context),
                          ),
                        ),
                      ),
                    ),
                  ),
                  AppUtils.kGap16,
                  Row(
                    children: [
                      Text(
                        context.l10n.you_are_buying_products
                            .replaceAll("%d", buyProducts.toString()),
                        style: Styles.manropeMedium16.copyWith(
                          color: FoodColors.c0E1923,
                        ),
                      ),
                      const Spacer(),
                      IconConstants.rightArrow,
                    ],
                  ),
                  AppUtils.kGap16,
                  AppUtils.kDivider,
                  AppUtils.kGap16,
                  Text(
                    "Время доставки",
                    style: Styles.manropeSemiBold16.copyWith(
                     color: FoodColors.c0E1923,
                    ),
                  ),
                  AppUtils.kGap16,
                  Container(
                    height: 56,
                    padding: AppUtils.kPaddingAll16,
                    decoration: ShapeDecoration(
                      color: ColorConstants.kGreyOrderBack,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Стандарт  40-50 мин",
                          style: Styles.manropeMedium16.copyWith(
                         color: FoodColors.c0E1923,
                          ),
                        ),
                        const Spacer(),
                        Image.asset(FoodImages.delivery),
                      ],
                    ),
                  ),
                  AppUtils.kGap16,
                  Text(
                    "Куда",
                    style: Styles.manropeMedium16.copyWith(
                      color: FoodColors.c0E1923,
                    ),
                  ),
                  AppUtils.kGap16,
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                        context, FoodNavigatorConst.foodAddLocationPage),
                    child: Container(
                      height: 56,
                      padding: AppUtils.kPaddingHor16,
                      decoration: ShapeDecoration(
                        color: ColorConstants.kGreyOrderBack,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        children: [
                          FoodIcons.circleRed,
                          Text(
                            "Улица Окилота, 21",
                            style: Styles.manropeMedium16.copyWith(
                               color: FoodColors.c0E1923,
                            ),
                          ),
                          const Spacer(),
                          IconConstants.rightArrow,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: AppUtils.kPaddingHor16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShortTextField(
                              title: "",
                              hintText: "Подьезд",
                              controller: homeController),
                          ShortTextField(
                              title: "",
                              hintText: "Код домофона",
                              controller: intercomController),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ShortTextField(
                              title: "",
                              hintText: "Кв/офис",
                              controller: offisController),
                          ShortTextField(
                              title: "",
                              hintText: "Этаж",
                              controller: floorController),
                        ],
                      ),
                      AppUtils.kGap16,
                      AppUtils.kDivider,
                      AppUtils.kGap16,
                      Text(
                        "Способы оплаты",
                        style: Styles.manropeSemiBold16.copyWith(
                          color: FoodColors.c0E1923,
                        ),
                      ),
                      AppUtils.kGap16,
                      Row(
                        children: [
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width * 0.44,
                            padding: AppUtils.kPaddingHor16,
                            margin: const EdgeInsets.only(
                              right: 4,
                            ),
                            decoration: ShapeDecoration(
                              color: ColorConstants.kGreyOrderBack,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Наличные",
                                    style: Styles.manropeSemiBold12.copyWith(
                                      color: FoodColors.c0E1923,
                                    ),
                                  ),
                                  Image.asset(ImageConstants.money,
                                      fit: BoxFit.fitHeight),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 56,
                            width: MediaQuery.of(context).size.width * 0.44,
                            padding: AppUtils.kPaddingHor16,
                            margin: const EdgeInsets.only(
                              left: 4,
                            ),
                            decoration: ShapeDecoration(
                              color: ColorConstants.kGreyOrderBack,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Karta orqali",
                                    style: Styles.manropeSemiBold12.copyWith(
                                        color: FoodColors.c0E1923,
                                    ),
                                  ),
                                  Image.asset(
                                    ImageConstants.card,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      AppUtils.kGap32,
                     const FoodCheckBoxWidget(),
                      AppUtils.kGap32,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: FoodColors.cffffff,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(
                  0.5), // Shadowning rangi va oqimining shaffofligi
              spreadRadius: 7, // Keshning tarqalishi
              blurRadius: 7, // Oqimining moslanganligi
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('14 000 sum', style: Styles.interSemiBold20),
                Text(
                  'Итого',
                  style: Styles.manropeMedium12
                      .copyWith(color: FoodColors.cA6AEBF),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) =>  FoodBasketPage(),
                //   ),
                // );
              },
              child: Container(
                width: 160,
                height: 48,
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: ShapeDecoration(
                  color: FoodColors.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Заказать",
                    textAlign: TextAlign.center,
                    style: Styles.manropeMedium16.copyWith(
                      color: FoodColors.cffffff,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
