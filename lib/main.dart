import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:karmango/config/app_init/cubit/app_init_cubit.dart';
import 'package:karmango/config/di/injection.dart';
import 'package:karmango/config/router/router.dart';
import 'package:karmango/config/theme/main_theme.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/core/l10n/app_localizations.dart';
import 'package:karmango/core/utils/app_options.dart';
import 'package:karmango/data/preferences/locale_data_source.dart';
import 'package:karmango/presentation/auth/change_password/cubit/change_cubit.dart';
import 'package:karmango/presentation/auth/login/cubit/login_cubit.dart';
import 'package:karmango/presentation/auth/otp/cubit/otp_cubit.dart';
import 'package:karmango/presentation/auth/register/cubit/register_cubit.dart';
import 'package:karmango/presentation/auth/splash/cubit/splash_cubit.dart';
import 'package:karmango/presentation/category/category_item_view/cubit/category_cubit.dart';
import 'package:karmango/presentation/details/cubit/details_cubit.dart';
import 'package:karmango/presentation/favourites/cubit/favourites_cubit.dart';
import 'package:karmango/presentation/basket/cubit/food_basket_cubit.dart';
import 'package:karmango/presentation/home/cubit/food_home_cubit.dart';
import 'package:karmango/presentation/profile/cubit/food_profile_cubit.dart';
import 'package:karmango/presentation/my_order/cubit/food_my_order_cubit.dart';
import 'dart:io';

import 'package:karmango/presentation/search/cubit/search_cubit.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();

  await init();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<AppInitCubit>()..checkAuth(),
        ),
        BlocProvider(create: (context) => locator<CategoryProductCubit>()),
        BlocProvider(create: (context) => locator<SearchedCubit>()),
        BlocProvider(create: (context) => locator<LoginCubit>()),
        BlocProvider(create: (context) => locator<FoodBasketCubit>()),
        BlocProvider(create: (context) => locator<FoodProfileCubit>()),
        BlocProvider(create: (context) => locator<FoodMyOrderCubit>()),
        BlocProvider(create: (context) => locator<FavouritesCubit>()),
        BlocProvider(create: (context) => locator<DetailsCubit>()),
        BlocProvider(create: (context) => locator<SplashCubit>()),
        BlocProvider(create: (context) => locator<OtpCubit>()),
        BlocProvider(create: (context) => locator<RegisterCubit>()),
        BlocProvider(create: (context) => locator<FoodHomeCubit>()),
        BlocProvider(create: (context) => locator<ChangePasswordCubit>()),
        // BlocProvider(create: (context) => locator<SearchBloc>()),

        
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
          initialRoute: FoodNavigatorConst.appContainer,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(),
              child:
                  child ?? const SizedBox.shrink(), // Ensure child is not null
            );
          },
        );
      }),
    );
  }
}



//? flutter build apk --release
//? dart run build_runner build --delete-conflicting-outputs
//? flutter clean && flutter pub get