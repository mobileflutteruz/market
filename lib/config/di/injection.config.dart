// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../data/api/api.dart' as _i1;
import '../../data/api/auth_api.dart' as _i677;
import '../../data/api/main_api.dart' as _i767;
import '../../data/preferences/token_preferences.dart' as _i401;
import '../../domain/repository/auth_repository.dart' as _i614;
import '../../domain/repository/data_repository.dart' as _i98;
import '../../domain/repository/main_repository.dart' as _i259;
import '../../domain/repository/search_repo.dart' as _i89;
import '../../domain/service/main_serivce.dart' as _i153;
import '../../presentation/auth/change_password/cubit/change_cubit.dart'
    as _i398;
import '../../presentation/auth/login/cubit/login_cubit.dart' as _i540;
import '../../presentation/auth/otp/cubit/otp_cubit.dart' as _i344;
import '../../presentation/auth/register/cubit/register_cubit.dart' as _i827;
import '../../presentation/auth/splash/cubit/splash_cubit.dart' as _i30;
import '../../presentation/basket/cubit/food_basket_cubit.dart' as _i165;
import '../../presentation/category/category_item_view/cubit/category_cubit.dart'
    as _i569;
import '../../presentation/category/cubit/category_cubit.dart' as _i1068;
import '../../presentation/details/cubit/details_cubit.dart' as _i964;
import '../../presentation/favourites/cubit/favourites_cubit.dart' as _i702;
import '../../presentation/home/cubit/food_home_cubit.dart' as _i653;
import '../../presentation/my_order/cubit/food_my_order_cubit.dart' as _i835;
import '../../presentation/profile/cubit/food_profile_cubit.dart' as _i205;
import '../../presentation/search/cubit/search_cubit.dart' as _i270;
import '../app_init/cubit/app_init_cubit.dart' as _i675;
import '../token_data_source.dart' as _i985;
import '../user_data_source.dart' as _i358;
import '../user_session_manager.dart' as _i716;
import 'data_module.dart' as _i444;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  await gh.factoryAsync<_i460.SharedPreferences>(
    () => dataModule.prefs,
    preResolve: true,
  );
  gh.singleton<_i558.FlutterSecureStorage>(() => dataModule.secureStorage);
  gh.factory<_i401.TokenPreference>(
      () => _i401.TokenPreference(gh<_i460.SharedPreferences>()));
  gh.factory<_i985.TokenDataSource>(
      () => _i985.TokenDataSource(gh<_i558.FlutterSecureStorage>()));
  gh.factory<_i358.UserDataDataSource>(() => _i358.UserDataDataSource(
        gh<_i558.FlutterSecureStorage>(),
        gh<_i460.SharedPreferences>(),
      ));
  gh.factory<_i259.MainRepository>(
      () => _i259.MainRepository(gh<_i401.TokenPreference>()));
  gh.factory<_i30.SplashCubit>(
      () => _i30.SplashCubit(gh<_i401.TokenPreference>()));
  gh.factory<_i835.FoodMyOrderCubit>(
      () => _i835.FoodMyOrderCubit(gh<_i259.MainRepository>()));
  gh.factory<_i1.Api>(() => _i1.Api(gh<_i985.TokenDataSource>()));
  gh.singleton<_i716.UserSessionManager>(() => _i716.UserSessionManager(
        gh<_i985.TokenDataSource>(),
        gh<_i358.UserDataDataSource>(),
      ));
  gh.factory<_i767.MainApi>(() => _i767.MainApi(gh<_i1.Api>()));
  gh.factory<_i89.SearchRepository>(() => _i89.SearchRepository(gh<_i1.Api>()));
  gh.factory<_i677.AuthApi>(() => _i677.AuthApi(
        gh<_i1.Api>(),
        gh<_i358.UserDataDataSource>(),
      ));
  gh.factory<_i153.MainService>(() => _i153.MainService(gh<_i767.MainApi>()));
  gh.factory<_i614.AuthRepository>(() => _i614.AuthRepository(
        gh<_i401.TokenPreference>(),
        gh<_i1.Api>(),
        gh<_i677.AuthApi>(),
        gh<_i716.UserSessionManager>(),
      ));
  gh.factory<_i398.ChangePasswordCubit>(
      () => _i398.ChangePasswordCubit(gh<_i614.AuthRepository>()));
  gh.factory<_i827.RegisterCubit>(
      () => _i827.RegisterCubit(gh<_i614.AuthRepository>()));
  gh.factory<_i205.FoodProfileCubit>(
      () => _i205.FoodProfileCubit(gh<_i614.AuthRepository>()));
  gh.factory<_i675.AppInitCubit>(() => _i675.AppInitCubit(
        gh<_i716.UserSessionManager>(),
        gh<_i1.Api>(),
      ));
  gh.factory<_i98.DataRepository>(() => _i98.DataRepository(
        gh<_i1.Api>(),
        gh<_i767.MainApi>(),
      ));
  gh.factory<_i344.OtpCubit>(() => _i344.OtpCubit(gh<_i614.AuthRepository>()));
  gh.factory<_i653.FoodHomeCubit>(() => _i653.FoodHomeCubit(
        gh<_i259.MainRepository>(),
        gh<_i98.DataRepository>(),
        gh<_i614.AuthRepository>(),
      ));
  gh.factory<_i964.DetailsCubit>(() => _i964.DetailsCubit(
        gh<_i259.MainRepository>(),
        gh<_i98.DataRepository>(),
      ));
  gh.factory<_i270.SearchedCubit>(() => _i270.SearchedCubit(
        gh<_i89.SearchRepository>(),
        gh<_i98.DataRepository>(),
      ));
  gh.factory<_i165.FoodBasketCubit>(() => _i165.FoodBasketCubit(
        gh<_i259.MainRepository>(),
        gh<_i98.DataRepository>(),
      ));
  gh.factory<_i540.LoginCubit>(() => _i540.LoginCubit(
        gh<_i677.AuthApi>(),
        gh<_i614.AuthRepository>(),
        gh<_i716.UserSessionManager>(),
      ));
  gh.factory<_i569.CategoryProductCubit>(
      () => _i569.CategoryProductCubit(gh<_i98.DataRepository>()));
  gh.factory<_i1068.CategoryCubit>(
      () => _i1068.CategoryCubit(gh<_i98.DataRepository>()));
  gh.factory<_i702.FavouritesCubit>(
      () => _i702.FavouritesCubit(gh<_i98.DataRepository>()));
  return getIt;
}

class _$DataModule extends _i444.DataModule {}
