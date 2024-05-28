import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';


class FoodAboutAppPage extends StatelessWidget {
  const FoodAboutAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.aboutTheApplication,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight),
            child: Padding(
              padding: AppUtils.kPaddingAll16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.l10n.aboutTheApplication,
                        textAlign: TextAlign.center,
                        style: Styles.manropeSemiBold18.copyWith(
                          color: FoodColors.c0E1923,
                        ),
                      ),
                      AppUtils.kGap12,
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including.",
                        style: Styles.manropeRegular13.copyWith(
                          color: FoodColors.c7C8A9D,
                          overflow: TextOverflow.visible
                        ),
                      ),
                    ],
                  ),
                  SafeArea(
                    child: Text(
                      '${context.l10n.version } 1.1.6(39)',
                      style: Styles.manropeMedium16.copyWith(
                        color: FoodColors.c8D909B,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
