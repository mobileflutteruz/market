import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/favourite/favourite.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import '../../components/buildable_cubit.dart';

part 'favourites_state.dart';
part 'favourites_cubit.freezed.dart';

@Injectable()
class FavouritesCubit
    extends BuildableCubit<FavouritesState, FavouritesBuildableState> {
  FavouritesCubit(this._dataRepository)
      : super(const FavouritesBuildableState()) {
    init();
  }

  final DataRepository _dataRepository;

  Future<void> init() async {
    await fetchFavourites();
  }

  fetchFavourites() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final Favourite? favourites = await _dataRepository.getFavorites();

      print("Favorite fetched successfully: $favourites");

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          favourites: favourites, // Bitta favourite obyekti qaytariladi
        ),
      );
    } catch (e) {
      print("fetch Favorit error: $e");
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }

// Future<void> fetchFavourites() async {
//   build((buildable) => buildable.copyWith(loading: true));

//   try {
//     final favourites = await _dataRepository.getFavorites();
//     build((buildable) => buildable.copyWith(
//       loading: false,
//       success: true,
//       favourites: favourites, // List<Favourite> tipiga o'zgartirildi
//     ));
//   } catch (e) {
//     build((buildable) => buildable.copyWith(
//       loading: false,
//       failure: true,
//       errorMessage: 'Sevimlilarni olishda xatolik yuz berdi: $e',
//     ));
//   }
// }

  Future<Favourite?> setLikeId(int productId) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final Favourite? favourite =
          await _dataRepository.createFavorite(product_id: productId);
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

  void deleteLikeId(int productId) async {
  build((buildable) =>
      buildable.copyWith(
        loading: true,
        success: false,
        failure: false,
        errorMessage: '', // Error message reset
      ));

  try {
    final bool isSuccess = await _dataRepository.deleteFavorite(productId: productId);

    if (isSuccess) {
      // Hozirgi state dan likeIds ni olish
      final List<String> updatedLikeIds = List<String>.from(
        (state as FavouritesBuildableState).likeIds
      )..remove(productId.toString());

      build((buildable) => buildable.copyWith(
            loading: false,
            success: true,
            failure: false,
            likeIds: updatedLikeIds,
          ));
    } else {
      build((buildable) => buildable.copyWith(
            loading: false,
            success: false,
            failure: true,
            errorMessage: 'Failed to delete the favorite item.',
          ));
    }
  } catch (e) {
    build((buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failure: true,
          errorMessage: 'Something went wrong: $e',
        ));
  }
}

}
