import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/presentation/components/input.dart';
import 'package:karmango/core/utils/app_layouts.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';


class FoodOurBranchesPage extends StatelessWidget {
  const FoodOurBranchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    final Map locationNames = {
      "Юнусабадский район,Улица  Богишамол, 260А": () {},
      "Ташкент, Мирабадский район, Улица. Авлие Ота": () {},
      "Яшнавод район ,Улица. Амира Темура, 7Б": () {},
    };

    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.ourBranches,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: AppUtils.kPaddingHor16Ver20,
        child: Column(
          children: [
            InputWidget(
              hintText: context.l10n.address ,
              keyboardType: TextInputType.text,
              prefixIcon: IconConstants.search,
              textEditingController: searchController,
            ),
            ...List.generate(
              3,
              (index) => OurBranchesMapItem(
                locationName: locationNames.keys.toList()[index],
                onTap: locationNames.values.toList()[index],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OurBranchesMapItem extends StatelessWidget {
  const OurBranchesMapItem({
    Key? key,
    required this.locationName,
    this.onTap,
  }) : super(key: key);
  final String locationName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          AppUtils.kGap20,
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(42, context),
                width: AppLayout.getHeight(42, context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: AppUtils.kBorderRadius8,
                  color: FoodColors.cF6F6F6,
                ),
                child: IconConstants.map,
              ),
              AppUtils.kGap16,
              Expanded(
                child: Text(
                  locationName,
                  maxLines: 2,
                  style: Styles.manropeMedium16.copyWith(
                    color: ColorConstants.c0E1A23,
                  ),
                ),
              ),
            ],
          ),
          AppUtils.kGap16,
          AppUtils.kDivider,
        ],
      ),
    );
  }
}


