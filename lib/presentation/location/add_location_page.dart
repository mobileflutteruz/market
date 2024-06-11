import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/data/preferences/temporary_db.dart';
import 'package:karmango/presentation/location/components/short_text_field.dart';
import 'package:karmango/presentation/my_order/components/location_text_fields.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/custom_color_button.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class FoodAddLocationPage extends StatefulWidget {
  const FoodAddLocationPage({super.key});

  @override
  State<FoodAddLocationPage> createState() => _FoodAddLocationPageState();
}

class _FoodAddLocationPageState extends State<FoodAddLocationPage> {
  TextEditingController roomController = TextEditingController();

  TextEditingController homeController = TextEditingController();

  TextEditingController coridorController = TextEditingController();

  TextEditingController floorController = TextEditingController();

  TextEditingController streetController = TextEditingController();

  String selectedRegion = " ";
  String selectedDistrict = " ";

  bool isSelectDistrict = false;
  bool isSelectRegion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CommonAppBar(
          title: context.l10n.enterNewAddress,
          backOnTap: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(16, context),
            vertical: AppLayout.getHeight(24, context)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                _customInput(
                  onTap: () {
                    myModalBottomSheet(
                      context,
                      widget: ListView.builder(
                          itemCount: regions.length,
                          itemBuilder: (context, index) {
                            String region = regions[index];
                            return GestureDetector(
                              onTap: () {
                                selectedRegion = regions[index];
                                isSelectRegion = true;
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 43,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      region.toString(),
                                      style: Styles.manropeRegular14,
                                    ),
                                    Divider(
                                        color: ColorConstants.cEDEDEF,
                                        height: 5),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  },
                  color: isSelectRegion == false
                      ? ColorConstants.c969BA6
                      : ColorConstants.c45474C,
                  title: context.l10n.region,
                  namePlace: isSelectRegion == false
                      ? context.l10n.selectTheRegion
                      : selectedRegion,
                  context,
                ),
                _customInput(
                  onTap: () {
                    myModalBottomSheet(
                      context,
                      widget: ListView.builder(
                          itemCount: toshkentDistrict.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                selectedDistrict = toshkentDistrict[index];
                                isSelectDistrict = true;
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 43,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      toshkentDistrict[index].toString(),
                                      style: Styles.manropeMedium14,
                                    ),
                                    Divider(
                                        color: ColorConstants.cEDEDEF,
                                        height: 5),
                                  ],
                                ),
                              ),
                            );
                          }),
                    );
                  },
                  title: context.l10n.district,
                  color: isSelectDistrict == false
                      ? ColorConstants.c969BA6
                      : ColorConstants.c45474C,
                  namePlace: isSelectDistrict == false
                      ? context.l10n.selectADistrict
                      : selectedDistrict,
                  context,
                ),
                const SizedBox(
                  height: 20,
                ),
                _customInputName(streetController, context),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShortTextField(
                        title: context.l10n.house,
                        hintText: "12",
                        controller: homeController),
                    ShortTextField(
                        title: context.l10n.apartment,
                        hintText: "6",
                        controller: roomController),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ShortTextField(
                        title: context.l10n.floor,
                        hintText: "6",
                        controller: floorController),
                    ShortTextField(
                        title: context.l10n.corridor,
                        hintText: "2",
                        controller: coridorController),
                  ],
                ),
              ],
            ),
            _customButton(context)
          ],
        ),
      ),
    );
  }

  Future<dynamic> myModalBottomSheet(BuildContext context,
      {required Widget widget}) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
            height: AppLayout.getHeight(590, context),
            child: widget);
      },
    );
  }

  Widget _customButton(BuildContext context) {
    return CustomColorButton(
      width: AppSizes.getW(context, 1),
      height: AppSizes.getH(context, 1),
      color: FoodColors.primaryColor,
      textColor: ColorConstants.cffffff,
      title: 'Подтвердить',
      onTap: () {
        Navigator.pushNamed(context, FoodNavigatorConst.foodOurBranches);
      },
    );
  }
}

Widget _customInput(
  BuildContext context, {
  required Function()? onTap,
  required String title,
  required String namePlace,
  required Color color,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 20,
      ),
      Text(
        title,
        style: Styles.manropeMedium14.copyWith(
          color: ColorConstants.c212121,
        ),
      ),
      SizedBox(height: AppSizes.getH(context, .008)),
      InkWell(
        onTap: onTap,
        highlightColor: ColorConstants.white,
        child: Container(
          height: AppLayout.getHeight(48, context),
          width: AppLayout.getWidth(343, context),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: ColorConstants.cF6F6F6,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                namePlace,
                style: Styles.manropeMedium14.copyWith(
                  color: color,
                ),
              ),
              IconConstants.bottomArrow,
            ],
          ),
        ),
      ),
    ],
  );
}

Widget _customInputName(TextEditingController nameCon, BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(context.l10n.street,
          style: Styles.manropeMedium18.copyWith(
            color: ColorConstants.c212121,
          )),
      SizedBox(height: AppSizes.getH(context, .008)),
      SizedBox(
        height: AppLayout.getHeight(48, context),
        child: FoodLocationTextField(
          ontap: () {},
          hintText: context.l10n.chukursayMasterShirin,
        ),
      ),
    ],
  );
}
