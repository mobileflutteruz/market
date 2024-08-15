import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../utils/app_options.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);

  Locale get currentLocale => AppOptions.of(this).locale;

  int get currentLocaleIndex => AppOptions.of(this).locale == const Locale('uz')
      ? 0
      : AppOptions.of(this).locale == const Locale('ru')
          ? 1
          : 2;

  Locale get locale => Localizations.localeOf(this);
}
