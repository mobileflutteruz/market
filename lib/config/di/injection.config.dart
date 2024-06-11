// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

import '../../data/api/api.dart' as _i7;
import '../../data/api/auth_api.dart' as _i15;
import '../../data/api/main_api.dart' as _i16;
import '../../data/preferences/token_preferences.dart' as _i5;
import '../../domain/repository/auth_repository.dart' as _i17;
import '../../domain/repository/data_repository.dart' as _i8;
import '../../domain/repository/main_repository.dart' as _i6;
import '../../presentation/auth/login/cubit/login_cubit.dart' as _i21;
import '../../presentation/auth/otp/cubit/otp_cubit.dart' as _i19;
import '../../presentation/auth/register/cubit/register_cubit.dart' as _i18;
import '../../presentation/auth/splash/cubit/splash_cubit.dart' as _i20;
import '../../presentation/details/cubit/details_cubit.dart' as _i11;
import '../../presentation/favourites/cubit/favourites_cubit.dart' as _i10;
import '../../presentation/food_basket/cubit/food_basket_cubit.dart' as _i12;
import '../../presentation/food_category/cubit/category_cubit.dart' as _i9;
import '../../presentation/food_profile/cubit/food_profile_cubit.dart' as _i4;
import '../../presentation/home/cubit/food_home_cubit.dart' as _i14;
import '../../presentation/my_order/cubit/food_my_order_cubit.dart' as _i13;
import 'data_module.dart' as _i22;

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
    gh.factory<_i5.TokenPreference>(
        () => _i5.TokenPreference(gh<_i3.SharedPreferences>()));
    gh.factory<_i6.MainRepository>(
        () => _i6.MainRepository(gh<_i5.TokenPreference>()));
    gh.factory<_i7.Api>(() => _i7.Api(gh<_i5.TokenPreference>()));
    gh.factory<_i8.DataRepository>(() => _i8.DataRepository(gh<_i7.Api>()));
    gh.factory<_i9.CategoryCubit>(() => _i9.CategoryCubit(
          gh<_i6.MainRepository>(),
          gh<_i8.DataRepository>(),
        ));
    gh.factory<_i10.FavouritesCubit>(() => _i10.FavouritesCubit(
          gh<_i6.MainRepository>(),
          gh<_i8.DataRepository>(),
        ));
    gh.factory<_i11.DetailsCubit>(() => _i11.DetailsCubit(
          gh<_i6.MainRepository>(),
          gh<_i8.DataRepository>(),
        ));
    gh.factory<_i12.FoodBasketCubit>(
        () => _i12.FoodBasketCubit(gh<_i6.MainRepository>()));
    gh.factory<_i13.FoodMyOrderCubit>(
        () => _i13.FoodMyOrderCubit(gh<_i6.MainRepository>()));
    gh.factory<_i14.FoodHomeCubit>(() => _i14.FoodHomeCubit(
          gh<_i6.MainRepository>(),
          gh<_i8.DataRepository>(),
        ));
    gh.factory<_i15.AuthApi>(() => _i15.AuthApi(gh<_i7.Api>()));
    gh.factory<_i16.MainApi>(() => _i16.MainApi(gh<_i7.Api>()));
    gh.factory<_i17.AuthRepository>(() => _i17.AuthRepository(
          gh<_i5.TokenPreference>(),
          gh<_i7.Api>(),
          gh<_i15.AuthApi>(),
        ));
    gh.factory<_i18.RegisterCubit>(
        () => _i18.RegisterCubit(gh<_i17.AuthRepository>()));
    gh.factory<_i19.OtpCubit>(() => _i19.OtpCubit(gh<_i17.AuthRepository>()));
    gh.factory<_i20.SplashCubit>(() => _i20.SplashCubit(
          gh<_i17.AuthRepository>(),
          gh<_i5.TokenPreference>(),
        ));
    gh.factory<_i21.LoginCubit>(
        () => _i21.LoginCubit(gh<_i17.AuthRepository>()));
    return this;
  }
}

class _$DataModule extends _i22.DataModule {}
