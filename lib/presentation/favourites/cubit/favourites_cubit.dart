import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/repository/main_repository.dart';
import '../../components/buildable_cubit.dart';

part 'favourites_state.dart';
part 'favourites_cubit.freezed.dart';

@Injectable()
class FavouritesCubit
    extends BuildableCubit<FavouritesState, FavouritesBuildableState> {
  FavouritesCubit(this._repository) : super(const FavouritesBuildableState()) {
    getLikeIds();
  }

  final MainRepository _repository;

  init() async {
    await getLikeIds();
  }

  changeImageIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        imageIndex: index,
      ),
    );
  }

  cardAddProduct() {
    build(
      (buildable) => buildable.copyWith(
          cardProductCount: buildable.cardProductCount == 5
              ? 5
              : buildable.cardProductCount + 1),
    );
  }

  cardReduceProduct() {
    build(
      (buildable) => buildable.copyWith(
          cardProductCount: buildable.cardProductCount == 0
              ? 0
              : buildable.cardProductCount - 1),
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

  getLikeIds() async {
    List<String> ids = await _repository.getLikeIds() ?? [];

    build(
      (buildable) => buildable.copyWith(
        likeIds: ids,
      ),
    );
    debugPrint("$ids");
  }

  changeTabIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        infoTabIndex: index,
      ),
    );
  }

  changeDescriptionExpandable() {
    build(
      (buildable) => buildable.copyWith(
          descriptionIsExpandable: !buildable.descriptionIsExpandable),
    );
  }

  changeCharacteristicsExpandable() {
    build(
      (buildable) => buildable.copyWith(
          characteristicsIsExpandable: !buildable.characteristicsIsExpandable),
    );
    print(
        "characteristicsIsExpandable: ${buildable.characteristicsIsExpandable}");
  }
}
