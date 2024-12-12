import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

import '../../../config/token_data_source.dart';

part 'food_basket_state.dart';

part 'food_basket_cubit.freezed.dart';

@Injectable()
class FoodBasketCubit
    extends BuildableCubit<FoodBasketState, FoodBasketBuildableState> {
  FoodBasketCubit(this._repo, this._dataRepo, this.tokenPreference)
      : super(const FoodBasketBuildableState()) {
    getBasketIds();
  }

  final TokenPreference tokenPreference;
  final MainRepository _repo;
  final DataRepository _dataRepo;

  Future<void> fetchBasketProducts() async {

    try {
      final response = await _dataRepo.getBasketProducts();
      build(
        (buildable) => buildable.copyWith(
          status: FoodBasketStatus.success,
          products: response.result,
        ),
      );
    } catch (e) {
      debugPrint("Error fetching basket products: $e");
      build(
        (buildable) => buildable.copyWith(
          status: FoodBasketStatus.failure,
        ),
      );
    }
  }

  Future<void> setBasketProducts(int productId) async {
    build(
      (buildable) => buildable.copyWith(
        status: FoodBasketStatus.loading,
      ),
    );
    try {
      final bool success = await _dataRepo.createBasket(product_id: productId);
      build(
        (buildable) => buildable.copyWith(
          status: FoodBasketStatus.success,
        ),
      );
    } catch (e) {
      debugPrint("Error creating basket: $e");
      build(
        (buildable) => buildable.copyWith(
          status: FoodBasketStatus.failure,
        ),
      );
    }
  }

  Future<void> removeByProductId(int productId) async {

    try {
      final bool success = await _dataRepo.deleteBasketById(productId);

      fetchBasketProducts();
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          status: FoodBasketStatus.failure,
        ),
      );
    }
  }

  // Clear basket IDs
  Future<void> clearBasketIds() async {
    await _repo.setBasketIds({});
    await getBasketIds(); // Refresh the basket IDs
  }

  // Change the current tab index
  void changeTabIndex({required int tabIndex}) {
    build((buildable) => buildable.copyWith(tabIndex: tabIndex == 0 ? 1 : 0));
  }

  // Set basket IDs based on new values
  Future<void> setBasketIds(Map<int, int> values) async {
    Map<int, int> ids = await _repo.getBasketIds();
    if (!ids.keys.contains(values.keys.first)) {
      ids.addAll(values);
      await _repo.setBasketIds(ids);
      build((buildable) => buildable.copyWith(
          cardProducts: ids, cardProductIds: ids.keys.toList()));
    }
  }

  // Fetch basket IDs and update the state
  Future<void> getBasketIds() async {
    Map<int, int> ids = await _repo.getBasketIds();
    build((buildable) => buildable.copyWith(
        cardProducts: ids, cardProductIds: ids.keys.toList()));
  }

  // Toggle select all or deselect all items in the basket
  void toggleAllCheckboxes(bool isSelected) {
    if (isSelected) {
      setSelectIds(buildable.cardProductIds); // Select all products
    } else {
      clearSelectIds(); // Deselect all products
    }
  }

  // Toggle individual product selection
  void toggleIndividualCheckbox(int productId, bool isSelected) {
    List<int> updatedSelectedIds = List<int>.from(buildable.selectedIds);

    if (isSelected) {
      updatedSelectedIds.add(productId); // Add productId if selected
    } else {
      updatedSelectedIds.remove(productId); // Remove productId if deselected
    }

    build((buildable) => buildable.copyWith(
        selectedIds: updatedSelectedIds,
        isChoosedAll:
            updatedSelectedIds.length == buildable.cardProductIds.length));
  }

  // Set selected product IDs

  void setSelectIds(List<int> productIds) {
    final updatedIds = List<int>.from(buildable.selectedIds)
      ..addAll(productIds);
    print("setSelectIds called. Updated IDs: $updatedIds");
    build(
      (buildable) => buildable.copyWith(selectedIds: updatedIds),
    );
  }

  void clearSelectIds() {
    print("clearSelectIds called. Clearing all IDs.");
    build(
      (buildable) => buildable.copyWith(selectedIds: []),
    );
  }

  // void setSelectIds(List<int> productIds) {
  //   List<int> resultIds = [];
  //   resultIds.addAll(buildable.selectedIds);

  //   for (int i = 0; i < productIds.length; i++) {
  //     if (!resultIds.contains(productIds[i])) {
  //       resultIds.add(productIds[i]);
  //     } else {
  //       resultIds.removeWhere((p) => p == productIds[i]);
  //     }
  //   }

  //   build(
  //     (buildable) => buildable.copyWith(
  //       selectedIds: resultIds,
  //     ),
  //   );
  // }

  // Clear all selected product IDs

  // State management for "select all"
  void chooseAllItem(bool value) {
    build(
      (buildable) => buildable.copyWith(isChoosedAll: value),
    );
    print("ISCHOOOCE: ${value}");
  }

  // Increase the quantity of a product
  void increaseQuantity(int id) {
    // final products = buildable.products?.map((product) {
    //   final updatedResults = product.result?.map((result) {
    //     if (result.id == id) {
    //       return result.copyWith(click_quantity: result.click_quantity! + 1);
    //     }
    //     return result;
    //   }).toList();
    //
    //   return product.copyWith(products: updatedResults);
    // }).toList();

    // if (products != null) {
    //   build((buildable) => buildable.copyWith(products: products));
    // }
  }

  // Decrease the quantity of a product
  Future<void> decreaseQuantity(int id) async {
    bool isDeleted = await _dataRepo.deleteAllBasket(buildable.chooseIds);

    // final products = buildable.products?.map((product) {
    //   final updatedResults = product.result?.map((result) {
    //     if (result.id == id && result.click_quantity! > 0) {
    //       return result.copyWith(click_quantity: result.click_quantity! - 1);
    //     }
    //     return result;
    //   }).toList();
    //
    //   return product.copyWith(result: updatedResults);
    // }).toList();
    //
    // if (products != null) {
    //   build((buildable) => buildable.copyWith(products: products));
    // }
  }

  // Remove all items from the basket
  Future<void> removeAllBasket() async {
    try {
      bool isDeleted = await _dataRepo.deleteAllBasket(buildable.chooseIds);

      if (isDeleted) {
        Map<int, int> ids = await _repo.getBasketIds();
        ids.clear();
        await _repo.setBasketIds(ids);
        build(
            (buildable) => buildable.copyWith(chooseIds: buildable.chooseIds));
      } else {
        throw Exception('Failed to delete all items from the basket');
      }
    } catch (e) {
      print('Error while removing all items from basket: $e');
    }
  }
}
