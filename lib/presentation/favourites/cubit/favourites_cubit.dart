import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
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
    await getLikeIds();
    await fetchFavorites();
  }

  Future<void> fetchFavorites() async {
    try {
      final favourites = await _dataRepository.getFavorites();
      build(
        (buildable) => buildable.copyWith(
          favourites: favourites,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future setFavouriteId(int productId) async {
    try {
      await _dataRepository.createFavorite(productId: productId);
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          failure: true,
        ),
      );
    }
  }

  Future fetchFavourites() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final List<MobileProduct>? favourites =
          await _dataRepository.getFavorites();

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          favourites: favourites,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
        ),
      );
    }
  }

  void changeImageIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        imageIndex: index,
      ),
    );
  }

  setLikeId(int likeId) async {
    List<String> ids = await _repository.getLikeIds() ?? [];
    debugPrint("List<String> ids = await _repository.getLikeIds() ?? [] $ids");

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
    debugPrint("$ids");
  }

  Future<void> getLikeIds() async {
    List<String> ids = await _repository.getLikeIds() ?? [];

    build(
      (buildable) => buildable.copyWith(
        likeIds: ids,
      ),
    );
    debugPrint("$ids");
  }

  void changeTabIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        infoTabIndex: index,
      ),
    );
  }
}
