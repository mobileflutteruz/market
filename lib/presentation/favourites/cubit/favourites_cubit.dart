import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
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
      final Favourite? favourites = await _dataRepository.getFavorites();
      if (favourites != null) {
        build((buildable) => buildable.copyWith(
              loading: false,
              success: true,
              favourites: favourites,
            ));
      } else {
        build((buildable) => buildable.copyWith(
              loading: false,
              failure: true,
              errorMessage: 'No favorites found.',
            ));
      }
    } catch (e) {
      build((buildable) => buildable.copyWith(
            loading: false,
            failure: true,
            errorMessage: 'Something went wrong: $e',
          ));
      print('Something went wrong: $e');
    }
  }

// Future<void> toggleFavourite(int productId) async {
//   final state = this.state as FavouritesBuildableState; // Cast state
//   final likeIds = List<String>.from(state.likeIds); // Ensure it's a modifiable list
//   final isLiked = likeIds.contains(productId.toString());

//   // 1. Avval lokal holatni yangilash
//   if (isLiked) {
//     likeIds.remove(productId.toString());
//   } else {
//     likeIds.add(productId.toString());
//   }
//   build((buildable) => buildable.copyWith(likeIds: likeIds));

//   // 2. Keyin serverga so'rov yuborish
//   try {
//     if (isLiked) {
//       await _dataRepository.deleteFavorite(productId: productId);
//     } else {
//       await _dataRepository.createFavorite(productId: productId);
//     }
//     await _repository.setLikeIds(likeIds);
//     await fetchFavourites(); // Fetch updated favourites after toggling the favorite status
//   } catch (e) {
//     build((buildable) => buildable.copyWith(failure: true));
//     print('Failed to toggle favorite status: $e');
//   }
// }

   void removeFavouriteFromUI(String productId) {
    final currentState = state as FavouritesBuildableState;
    final currentFavourites = currentState.favourites;
    if (currentFavourites != null) {
      final updatedList = currentFavourites.result!.where((item) => item!.id != productId).toList();
      emit(currentState.copyWith(
        favourites: currentFavourites.copyWith(result: updatedList),
      ));
    }
  }

    setLikeId(int likeId) async {
    List<String> ids = await _repository.getLikeIds() ?? [];
    print("List<String> ids = await _repository.getLikeIds() ?? [] $ids");

    if (!ids.contains(likeId.toString())) {
      ids.add(likeId.toString());
    } else {
      ids.removeWhere((p) => p == likeId.toString());
    }
    await _repository.setLikeIds(ids);

    build(
      (buildable) => buildable.copyWith(
        likeIds: ids,
      ),
    );
    print("$ids");
  }


 
}
