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
  FoodBasketCubit(this._repository) : super(const FoodBasketBuildableState()) {
    getBasketIds();
  }

  final MainRepository _repository;

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

  void updateBasket(Map<int, int> values) async {
    Map<int, int> ids = await _repository.getBasketIds();

    // Ensure that values is not null and is not empty before proceeding
    if (values != null && values.isNotEmpty) {
      // Check if the ids map does not already contain the key from values
      if (!ids.containsKey(values.keys.first)) {
        // Merge the values map into the ids map
        ids.addAll(values);
      }
    }

    // Update the basket IDs in the repository
    await _repository.setBasketIds(ids);

    // Update the state of the cubit with the updated values
    build((buildable) => buildable.copyWith(
          cardProducts: ids,
          cardProductIds: ids.keys.toList(),
        ));
  }

  clearBasketIds() async {
    await _repository.setBasketIds({});
    Map<int, int> ids = await _repository.getBasketIds();

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
    Map<int, int> ids = await _repository.getBasketIds();

    if (!ids.keys.contains(values.keys.first)) {
      ids.addAll(values);
    }
    await _repository.setBasketIds(ids);
    build(
      (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  removeBasketId(int id) async {
    Map<int, int> ids = await _repository.getBasketIds();

    ids.removeWhere((key, value) => key == id);

    await _repository.setBasketIds(ids);

    build(
      (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  getBasketIds() async {
    Map<int, int> ids = await _repository.getBasketIds();

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
