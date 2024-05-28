import 'package:karmango/data/preferences/locale_data_source.dart';
import 'package:karmango/presentation/auth/login/cubit/login_cubit.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/food_basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/food_category/cubit/category_cubit.dart';
import 'package:karmango/presentation/food_profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/my_order/cubit/food_my_order_cubit.dart';
import 'package:karmango/core/utils/app_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/config/router/router.dart';
import 'package:karmango/config/theme/main_theme.dart';
import 'core/constants/constants.dart';
import 'core/l10n/app_localizations.dart';

import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          var bloc = locator<FoodHomeCubit>();
          bloc.fetchProducts();
          return bloc;
        }),
        BlocProvider(create: (context) => locator<LoginCubit>()),
        BlocProvider(create: (context) => locator<FoodBasketCubit>()),
        BlocProvider(create: (context) => locator<FoodProfileCubit>()),
        BlocProvider(create: (context) => locator<FoodMyOrderCubit>()),
        BlocProvider(create: (context) => locator<FavouritesCubit>()),
        BlocProvider(create: (context) => locator<CategoryCubit>()),
        BlocProvider(create: (context) => locator<DetailsCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}

Future<void> init() async {
  await LocalDataService.init();
  await configureDependencies();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ModelBinding(
      initialModel: AppOptions.instance,
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Karman GO',
          debugShowCheckedModeBanner: false,
          locale: AppOptions.of(context).locale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: MainTheme.light,
          themeMode: ThemeMode.light,
          onGenerateRoute: OngenerateRoutes.instance.routeGenerator,
          initialRoute: FoodNavigatorConst.foodHome,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  // textScaler: const TextScaler.linear(1.0),
              ),
              child: child ?? const SizedBox.shrink(), // Ensure child is not null
            );
          },
        );
      }),
    );
  }
}

/// flutter run -d windows
/// flutter build apk --release
/// flutter build apk --split-per-abi
/// flutter build appbundle --release
/// flutter pub run build_runner watch --delete-conflicting-outputs
/// flutter pub run build_runner build --delete-conflicting-outputs
/// flutter pub ipa
/// flutter gen-l10n
