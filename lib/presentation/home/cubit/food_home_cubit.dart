import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/core/constants/navigator_const.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import '../../../domain/model/mobile/home/home.dart';
import '../../../domain/repository/data_repository.dart';

part 'food_home_state.dart';
part 'food_home_cubit.freezed.dart';

@injectable
class FoodHomeCubit
    extends BuildableCubit<FoodHomeState, FoodHomeBuildableState> {
  FoodHomeCubit(this._repository, this.repo, this.auth)
      : super(const FoodHomeBuildableState()) {
    getLikeIds();
  }

  final DataRepository repo;
  final MainRepository _repository;
  final AuthRepository auth;
  void changeImageIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        imageIndex: index,
      ),
    );
  }

  void changeTabs(int index) {
    build(
      (buildable) => buildable.copyWith(currentIndex: index),
    );
  }

  Future<void> setLikeId(int likeId) async {
    List<String> ids = await _repository.getLikeIds() ?? [];
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
  }

  Future<void> getLikeIds() async {
    List<String> ids = await _repository.getLikeIds() ?? [];
    build(
      (buildable) => buildable.copyWith(
        likeIds: ids,
      ),
    );
  }

  void changeTabIndex(int index) {
    build(
      (buildable) => buildable.copyWith(
        infoTabIndex: index,
      ),
    );
  }

  void changeDescriptionExpandable() {
    build(
      (buildable) => buildable.copyWith(
          descriptionIsExpandable: !buildable.descriptionIsExpandable),
    );
  }

  void changeCharacteristicsExpandable() {
    build(
      (buildable) => buildable.copyWith(
          characteristicsIsExpandable: !buildable.characteristicsIsExpandable),
    );
  }

  void cardAddProduct() {
    build(
      (buildable) => buildable.copyWith(
          cardProductCount: buildable.cardProductCount == 5
              ? 5
              : buildable.cardProductCount + 1),
    );
  }

  void cardReduceProduct() {
    build(
      (buildable) => buildable.copyWith(
          cardProductCount: buildable.cardProductCount == 0
              ? 0
              : buildable.cardProductCount - 1),
    );
  }

  // Future<void> createGuest(BuildContext context) async {
  //   build((buildable) =>
  //       buildable.copyWith(loading: true, failed: false, success: false));
  //   try {
  //     await auth.loginAsGuest();
  //     Navigator.pushNamedAndRemoveUntil(
  //         context, FoodNavigatorConst.foodHome, (route) => false);
  //     build((buildable) =>
  //         buildable.copyWith(loading: false, success: true, failed: false));
  //   } catch (e) {
  //     build(
  //       (buildable) => buildable.copyWith(
  //         loading: false,
  //         failed: true, // Ensure failure is set to true on error
  //         error: e.toString(), // Capture the error message
  //       ),
  //     );
  //   }
  // }

  Future<void> fetchProducts() async {
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
