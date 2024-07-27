import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/repository/main_repository.dart';

part 'food_basket_state.dart';

part 'food_basket_cubit.freezed.dart';

@Injectable()
class FoodBasketCubit
    extends BuildableCubit<FoodBasketState, FoodBasketBuildableState> {
  FoodBasketCubit(this._repo, this._dataRepo)
      : super(const FoodBasketBuildableState()) {
    getBasketIds();
  }

  final MainRepository _repo;
  final DataRepository _dataRepo;

  setSelectIds(List<int> productIds) {
    List<int> resultIds = [];
    resultIds.addAll(buildable.selectedIds);
    debugPrint("resultIds: $resultIds");

    for (int i = 0; i < productIds.length; i++) {
      if (!resultIds.contains(productIds[i])) {
        resultIds.add(productIds[i]);
      } else {
        resultIds.removeWhere((p) => p == productIds[i]);
      }
    }
    debugPrint("resultIdNext: $resultIds");

    build(
      (buildable) => buildable.copyWith(
        selectedIds: resultIds,
      ),
    );
  }

  clearSelectIds() {
    build(
      (buildable) => buildable.copyWith(
        selectedIds: [],
      ),
    );
  }

  Future basketProducts() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final BasketProducts products = await _dataRepo.getBasketProducts();

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          products: products,
        ),
      );
    } catch (e) {
      print("basketProducts error------------------------------------------");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failed: true,
          error: true,
        ),
      );
    }
  }


   Future setBasketProducts(int product_id ) async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final BasketProducts products = await _dataRepo.createCart(productId: product_id);
      print("basketProducts success------------------------------------------");
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          products: products,
        ),
      );

    } catch (e) {
      print("basketProducts error------------------------------------------");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failed: true,
          error: true,
        ),
      );
    }
  }


  void updateBasket(Map<int, int> values) async {
    Map<int, int> ids = await _repo.getBasketIds();

    // Ensure that values is not null and is not empty before proceeding
    if (values.isNotEmpty) {
      // Check if the ids map does not already contain the key from values
      if (!ids.containsKey(values.keys.first)) {
        // Merge the values map into the ids map
        ids.addAll(values);
      }
    }

    // Update the basket IDs in the repository
    await _repo.setBasketIds(ids);

    // Update the state of the cubit with the updated values
    build((buildable) => buildable.copyWith(
          cardProducts: ids,
          cardProductIds: ids.keys.toList(),
        ));
  }

  clearBasketIds() async {
    await _repo.setBasketIds({});
    Map<int, int> ids = await _repo.getBasketIds();

    build(
      (buildable) => buildable.copyWith(
          cardProductIds: ids.keys.toList(), cardProducts: ids),
    );
  }

  changeTabIndex({required int tabIndex}) {
    build(
      (buildable) => buildable.copyWith(
        tabIndex: tabIndex == 0 ? 1 : 0,
      ),
    );
  }

  setBasketIds(Map<int, int> values) async {
    Map<int, int> ids = await _repo.getBasketIds();

    if (!ids.keys.contains(values.keys.first)) {
      ids.addAll(values);
    }
    await _repo.setBasketIds(ids);
    build(
      (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  removeBasketId(int id) async {
    Map<int, int> ids = await _repo.getBasketIds();

    ids.removeWhere((key, value) => key == id);

    await _repo.setBasketIds(ids);

    build(
      (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  getBasketIds() async {
    Map<int, int> ids = await _repo.getBasketIds();

    build(
      (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  chooseAllItem(bool value) {
    build(
      (buildable) => buildable.copyWith(
        isChoosedAll: value,
      ),
    );
  }

// cardAddProducts({required int productId}) {
//   build(
//         (buildable) => buildable.copyWith(
//         cardProductsCount: buildable.cardProductCount == 5
//             ? 5
//             : buildable.cardProductCount + 1),
//   );
// }
//
// cardReduceProducts() {
//   build(
//         (buildable) => buildable.copyWith(
//         cardProductCount: buildable.cardProductCount == 0
//             ? 0
//             : buildable.cardProductCount - 1),
//   );
// }
}
