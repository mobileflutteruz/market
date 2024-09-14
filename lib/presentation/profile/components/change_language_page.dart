import 'package:karmango/core/constants/constants.dart';
import 'package:karmango/core/utils/app_options.dart';
import 'package:karmango/data/preferences/temporary_db.dart';
import 'package:karmango/presentation/components/common_app_bar.dart';
import 'package:karmango/core/extension/context_extension.dart';
import '../../../../core/utils/utils.dart';
import 'package:flutter/material.dart';

class FoodChangeLanguagePage extends StatefulWidget {
  const FoodChangeLanguagePage({super.key});

  @override
  State<FoodChangeLanguagePage> createState() => _FoodChangeLanguagePageState();
}

class _FoodChangeLanguagePageState extends State<FoodChangeLanguagePage> {
  
  int _site = AppOptions.instance.locale == const Locale("uz")
      ? 0
      : AppOptions.instance.locale == const Locale("ru")
          ? 1
          : 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: context.l10n.changeTheLanguage,
        backOnTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: AppUtils.kPaddingAll16,
        child: Column(
          children: [
            ...List.generate(
              languageItems.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _site = index;
                      AppOptions.instance.locale;

                      AppOptions.update(
                        context,
                        AppOptions.of(context).copyWith(
                            locale: localization[index] //const Locale("en"),
                            ),
                      );
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    padding: AppUtils.kPaddingHorizontal16,
                    decoration: BoxDecoration(
                      color: FoodColors.cF5F5F8,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(languageItems.values.toList()[index]),
                        const SizedBox(width: 12),
                        Text(
                          languageItems.keys.toList()[index],
                          style: Styles.manropeMedium16.copyWith(
                            color: FoodColors.c0E1923,
                          ),
                        ),
                        const Spacer(),
                        Radio(
                          activeColor: FoodColors.primaryColor,
                          focusColor: FoodColors.cC6C8CE,
                          value: index,
                          groupValue: _site,
                          onChanged: (value) {
                            setState(() {
                              _site = value!;
                              AppOptions.update(
                                context,
                                AppOptions.of(context).copyWith(
                                    locale: localization[
                                        index] //const Locale("en"),
                                    ),
                              );
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LanguageButtonWidget extends StatelessWidget {
  const LanguageButtonWidget(
      {super.key,
      this.onTap,
      required this.text,
      required this.iconData,
      this.isRed = false});

  final void Function()? onTap;
  final String text;
  final IconData iconData;
  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        padding: AppUtils.kPaddingHorizontal16,
        decoration: ShapeDecoration(
          color: ColorConstants.cF7F7F7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              color: isRed ? const Color(0xFFD71B30) : null,
            ),
            AppUtils.kGap12,
            Text(
              text,
              style: Styles.manropeMedium14.copyWith(
                color:
                    isRed ? const Color(0xFFD71B30) : const Color(0xFF162B4C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
