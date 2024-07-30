import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/expections/invalid_credentials_exceptions.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import '../../../domain/repository/main_repository.dart';
import '../../components/buildable_cubit.dart';

part 'favourites_state.dart';

part 'favourites_cubit.freezed.dart';

@Injectable()
class FavouritesCubit
    extends BuildableCubit<FavouritesState, FavouritesBuildableState> {
  FavouritesCubit(this._repository, this._dataRepository)
      : super(const FavouritesBuildableState()) {
    init();
  }

  final MainRepository _repository;
  final DataRepository _dataRepository;

  Future<void> init() async {
    await fetchFavourites();
  }

  Future<void> fetchFavourites() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final Favourite favourites = await _dataRepository.getFavorites();
      build((buildable) => buildable.copyWith(
            loading: false,
            success: true,
            favourites: favourites,
          ));
    } catch (e) {
      build((buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            errorMessage: 'Something went wrong: $e',
          ));
      print('Something went wrong: $e');
    }
  }

  Future<Favourite?> setLikeId(int productId) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final Favourite? favourite =
          await _dataRepository.createFavorite(productId);
      build((buildable) => buildable.copyWith(
            loading: false,
            success: true,
            favourites: favourite,
            // Resetting the last deleted product ID
          ));
      return favourite;
    } catch (e) {
      build((buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            errorMessage: 'Something went wrong: $e',
          ));
      print('Something went wrong: $e');
      return null;
    }
  }

  // setLikeId(int likeId) async {
  //   List<String> ids = await _repository.getLikeIds() ?? [];
  //   print("List<String> ids = await _repository.getLikeIds() ?? [] $ids");

  //   if (!ids.contains(likeId.toString())) {
  //     ids.add(likeId.toString());
  //   } else {
  //     ids.removeWhere((p) => p == likeId.toString());
  //   }
  //   await _repository.setLikeIds(ids);

  //   build(
  //     (buildable) => buildable.copyWith(
  //       likeIds: ids,
  //     ),
  //   );
  //   print("$ids");
  // }

  Future<void> deleteLikeId(int productId) async {
    try {
      print(
          "deleteLikeId -------------------------------${productId.toString()}");

      // Loading holatini yangilash
      build((buildable) => buildable.copyWith(
            loading: true,
            success: false,
            failure: false,
            errorMessage: '',
          ));

      // deleteFavorite metodi chaqiriladi va natijasi tekshiriladi
      bool success = await _dataRepository.deleteFavorite(productId: productId);

      if (success) {
        print("deleteLike -------------------------------");

        // Muvaffaqiyatli bo'lganda UI holatini yangilash
        build((buildable) => buildable.copyWith(
              loading: false,
              success: true,
              failure: false,
              errorMessage: '',
            ));
      } else {
        // Muvaffaqiyatsiz bo'lsa, xatolik holatini yangilash
        build(
          (buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            success: false,
            errorMessage: 'Failed to delete the favorite item.',
          ),
        );
      }
    } catch (e) {
      print(
          "deleteLikeId error -------------------------------${e.toString()}");
      // Xatolik holatini yangilash
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          success: false,
          errorMessage:
              'Something went wrong: ${e.runtimeType == UserNotFoundException ? 'User not found' : e.toString()}',
        ),
      );
    }
  }
}
