// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/api/api.dart' as _i12;
import '../../data/api/auth_api.dart' as _i18;
import '../../data/api/main_api.dart' as _i19;
import '../../data/preferences/token_preferences.dart' as _i7;
import '../../domain/repository/auth_repository.dart' as _i22;
import '../../domain/repository/data_repository.dart' as _i14;
import '../../domain/repository/main_repository.dart' as _i9;
import '../../domain/service/main_serivce.dart' as _i21;
import '../../presentation/auth/login/cubit/login_cubit.dart' as _i27;
import '../../presentation/auth/otp/cubit/otp_cubit.dart' as _i24;
import '../../presentation/auth/register/cubit/register_cubit.dart' as _i23;
import '../../presentation/auth/splash/cubit/splash_cubit.dart' as _i26;
import '../../presentation/basket/cubit/food_basket_cubit.dart' as _i20;
import '../../presentation/category/cubit/category_cubit.dart' as _i15;
import '../../presentation/details/cubit/details_cubit.dart' as _i17;
import '../../presentation/favourites/cubit/favourites_cubit.dart' as _i16;
import '../../presentation/home/cubit/food_home_cubit.dart' as _i25;
import '../../presentation/my_order/cubit/food_my_order_cubit.dart' as _i10;
import '../../presentation/profile/cubit/food_profile_cubit.dart' as _i4;
import '../app_init/cubit/app_init_cubit.dart' as _i13;
import '../token_data_source.dart' as _i8;
import '../user_data_source.dart' as _i6;
import '../user_session_manager.dart' as _i11;
import 'data_module.dart' as _i28;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dataModule = _$DataModule();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => dataModule.prefs,
      preResolve: true,
    );
    gh.factory<_i4.FoodProfileCubit>(() => _i4.FoodProfileCubit());
    gh.singleton<_i5.FlutterSecureStorage>(() => dataModule.secureStorage);
    gh.factory<_i6.UserDataDataSource>(() => _i6.UserDataDataSource(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i3.SharedPreferences>(),
        ));
    gh.factory<_i7.TokenPreference>(
        () => _i7.TokenPreference(gh<_i3.SharedPreferences>()));
    gh.factory<_i8.TokenDataSource>(
        () => _i8.TokenDataSource(gh<_i5.FlutterSecureStorage>()));
    gh.factory<_i9.MainRepository>(
        () => _i9.MainRepository(gh<_i7.TokenPreference>()));
    gh.factory<_i10.FoodMyOrderCubit>(
        () => _i10.FoodMyOrderCubit(gh<_i9.MainRepository>()));
    gh.singleton<_i11.UserSessionManager>(() => _i11.UserSessionManager(
          gh<_i8.TokenDataSource>(),
          gh<_i6.UserDataDataSource>(),
        ));
    gh.factory<_i12.Api>(() => _i12.Api(
          gh<_i7.TokenPreference>(),
          gh<_i11.UserSessionManager>(),
        ));
    gh.factory<_i13.AppInitCubit>(
        () => _i13.AppInitCubit(gh<_i11.UserSessionManager>()));
    gh.factory<_i14.DataRepository>(() => _i14.DataRepository(gh<_i12.Api>()));
    gh.factory<_i15.CategoryCubit>(
        () => _i15.CategoryCubit(gh<_i14.DataRepository>()));
    gh.factory<_i16.FavouritesCubit>(() => _i16.FavouritesCubit(
          gh<_i9.MainRepository>(),
          gh<_i14.DataRepository>(),
        ));
    gh.factory<_i17.DetailsCubit>(() => _i17.DetailsCubit(
          gh<_i9.MainRepository>(),
          gh<_i14.DataRepository>(),
        ));
    gh.factory<_i18.AuthApi>(() => _i18.AuthApi(gh<_i12.Api>()));
    gh.factory<_i19.MainApi>(() => _i19.MainApi(gh<_i12.Api>()));
    gh.factory<_i20.FoodBasketCubit>(() => _i20.FoodBasketCubit(
          gh<_i9.MainRepository>(),
          gh<_i14.DataRepository>(),
        ));
    gh.factory<_i21.MainService>(() => _i21.MainService(gh<_i19.MainApi>()));
    gh.factory<_i22.AuthRepository>(() => _i22.AuthRepository(
          gh<_i7.TokenPreference>(),
          gh<_i12.Api>(),
          gh<_i18.AuthApi>(),
        ));
    gh.factory<_i23.RegisterCubit>(
        () => _i23.RegisterCubit(gh<_i22.AuthRepository>()));
    gh.factory<_i24.OtpCubit>(() => _i24.OtpCubit(gh<_i22.AuthRepository>()));
    gh.factory<_i25.FoodHomeCubit>(() => _i25.FoodHomeCubit(
          gh<_i9.MainRepository>(),
          gh<_i14.DataRepository>(),
          gh<_i22.AuthRepository>(),
        ));
    gh.factory<_i26.SplashCubit>(() => _i26.SplashCubit(
          gh<_i22.AuthRepository>(),
          gh<_i7.TokenPreference>(),
        ));
    gh.factory<_i27.LoginCubit>(() => _i27.LoginCubit(
          gh<_i18.AuthApi>(),
          gh<_i22.AuthRepository>(),
          gh<_i11.UserSessionManager>(),
        ));
    return this;
  }
}

class _$DataModule extends _i28.DataModule {}
