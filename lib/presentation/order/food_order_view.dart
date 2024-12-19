import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/image_const.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/utils/utils.dart';
import 'package:karmango/data/locale_db/food_db.dart';
import 'package:karmango/presentation/auth/register/components/checkbox_widget.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/components/buildable.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/loader_widget.dart';
import 'package:karmango/presentation/location/components/short_text_field.dart';

class FoodOrderView extends StatefulWidget {
  const FoodOrderView({super.key});

  @override
  State<FoodOrderView> createState() => _FoodOrderViewState();
}

class _FoodOrderViewState extends State<FoodOrderView>
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
    return BlocProvider(
      create: (context) => locator<FoodBasketCubit>()..fetchBasketProducts(),
      child: BlocListener<FoodBasketCubit, FoodBasketState>(
        listener: (context, state) {
          if (state is FoodBasketBuildableState) {
            if (state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
            
          }
        },
        child: Buildable<FoodBasketCubit, FoodBasketState,
            FoodBasketBuildableState>(
          properties: (buildable) => [
            buildable.status,
            buildable.response,
          ],
          builder: (context, state) {
            return Scaffold(
              appBar: CommonAppBar(
                title: context.l10n.officializeTheOrder,
                backOnTap: () {
                  Navigator.pop(context);
                },
              ),
              body: switch (state.status) {
                FoodBasketStatus.initial => LoaderWidget(),
                FoodBasketStatus.loading => LoaderWidget(),
                FoodBasketStatus.failure => Center(
                    child: Text("Xatolik yuz berdi"),
                  ),
                FoodBasketStatus.success => CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AppUtils.kGap16,
                              _buildProductList(state),
                              AppUtils.kGap16,
                              _buildDeliveryTime(context),
                              AppUtils.kGap16,
                              Text(
                                "Куда",
                                style: Styles.manropeSemiBold16.copyWith(
                                  color: FoodColors.c0E1923,
                                ),
                              ),
                              AppUtils.kGap8,

                              _buildAddressField(context),
                              AppUtils.kGap16,
                              // _buildAdditionalFields(state),
                              _buildAdditionalFields(
                                  state,
                                  homeController,
                                  intercomController,
                                  offisController,
                                  floorController),
                              AppUtils.kGap16,
                              _buildPaymentMethods(context),
                              AppUtils.kGap32,
                              const FoodCheckBoxWidget(),
                              AppUtils.kGap32,
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
              },
              bottomNavigationBar: _buildBottomBar(context, state),
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductList(
    FoodBasketBuildableState state,
  ) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: state.response!.result!.length,
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
              state.response!.result![index].id.toString(),

              // foodCategoryImages[index % foodCategoryImages.length],
              width: AppLayout.getHeight(58, context),
              height: AppLayout.getHeight(56, context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDeliveryTime(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.deliveryDateAndTime,
          // "Время доставки",
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
                // context.l10n.sta
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
      ],
    );
  }

  Widget _buildAddressField(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, FoodNavigatorConst.foodAddLocationPage),
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
    );
  }

  Widget _buildAdditionalFields(
      FoodBasketBuildableState state,
      TextEditingController homeController,
      TextEditingController intercomController,
      TextEditingController offisController,
      TextEditingController floorController) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShortTextField(
                title: "", hintText: "Подьезд", controller: homeController),
            ShortTextField(
                title: "",
                hintText: "Код домофона",
                controller: intercomController),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ShortTextField(
                title: "", hintText: "Кв/офис", controller: offisController),
            ShortTextField(
                title: "", hintText: "Этаж", controller: floorController),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentMethods(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Способы оплаты",
          style: Styles.manropeSemiBold16.copyWith(
            color: FoodColors.c0E1923,
          ),
        ),
        AppUtils.kGap16,
        Row(
          children: [
            _buildPaymentOption(context, "Наличные", ImageConstants.money),
            const SizedBox(width: 8),
            _buildPaymentOption(context, "Karta orqali", ImageConstants.card),
          ],
        ),
      ],
    );
  }

  Widget _buildPaymentOption(
      BuildContext context, String text, String imagePath) {
    return Expanded(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: Styles.manropeSemiBold12.copyWith(
                color: FoodColors.c0E1923,
              ),
            ),
            Image.asset(
              imagePath,
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar(BuildContext context, FoodBasketBuildableState state) {
    return Container(
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
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 7,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${state.response!.total_payment ?? ''} sum',
                  style: Styles.interSemiBold20),
              Text(
                'Итого',
                style:
                    Styles.manropeMedium12.copyWith(color: FoodColors.cA6AEBF),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              //! ConfirmOrder
              // context.read<FoodBasketCubit>().confirmOrder();
            },
            child: Container(
              width: 160,
              height: 48,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
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
    );
  }
}
