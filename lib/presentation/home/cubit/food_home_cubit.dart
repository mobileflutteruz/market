
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/model/mobile/home/home.dart';
import '../../../domain/repository/data_repository.dart';

part 'food_home_state.dart';

part 'food_home_cubit.freezed.dart';

@injectable
class FoodHomeCubit
    extends BuildableCubit<FoodHomeState, FoodHomeBuildableState> {
  FoodHomeCubit(this._repository, this.repo)
      : super(const FoodHomeBuildableState()) {
    getLikeIds();
  }

  final DataRepository repo;

  final MainRepository _repository;

  increment() {
    build((state) => FoodHomeBuildableState(count: state.count + 1));
  }

  decrement() {
    build((state) => FoodHomeBuildableState(count: state.count - 1));
  }

  // shareProduct(CategoryModel product) {
  //   final String text = 'Check out this amazing product: ${product.name}!';
  //
  //   Share.share(text);
  // }

  changeImageIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        imageIndex: index,
      ),
    );
  }

  changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
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

  Future fetchProducts() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final MobileHomeProducts products = await repo.getHomeProducts();

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          homeProducts: products,
        ),
      );
    } catch (e) {
      print("fetchProducts error------------------------------------------");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failed: true,
          error: e.toString(),
        ),
      );
    }
  }
}
