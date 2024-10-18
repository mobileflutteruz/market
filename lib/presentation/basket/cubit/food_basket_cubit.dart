import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/mobile/basket/basket_products.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

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

  // Select or deselect product IDs based on the provided list.
  void setSelectIds(List<int> productIds) {
    final selectedIds = List<int>.from(buildable.selectedIds);
    debugPrint("Current selected IDs: $selectedIds");

    for (final productId in productIds) {
      if (selectedIds.contains(productId)) {
        selectedIds.remove(productId);
      } else {
        selectedIds.add(productId);
      }
    }
    debugPrint("Updated selected IDs: $selectedIds");

    build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  }

  // Clear all selected IDs
  void clearSelectIds(List<int> selectedIds) {
    build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  }

  // Fetch basket products and handle loading states
  Future<void> basketProducts() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final List<BasketProducts> products = await _dataRepo.getBasketProducts();
      build((buildable) => buildable.copyWith(
          loading: false, success: true, products: products));
    } catch (e) {
      debugPrint("Error fetching basket products: $e");
      build((buildable) =>
          buildable.copyWith(loading: false, failed: true, error: true));
    }
  }

  // Add a product to the basket
  Future<void> setBasketProducts(int productId) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final bool success = await _dataRepo.createBasket(product_id: productId);
      build(
          (buildable) => buildable.copyWith(loading: false, success: success));
    } catch (e) {
      debugPrint("Error creating basket: $e");
      build((buildable) =>
          buildable.copyWith(loading: false, failed: true, error: true));
    }
  }

  // Update basket IDs in the repository
  Future<void> updateBasket(Map<int, int> values) async {
    Map<int, int> ids = await _repo.getBasketIds();
    if (values.isNotEmpty) {
      ids.addAll(values); // Merge the new values into the existing IDs
      await _repo.setBasketIds(ids); // Update the repository
      build((buildable) => buildable.copyWith(
          cardProducts: ids, cardProductIds: ids.keys.toList()));
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

  // Remove a specific basket ID
  Future<void> removeBasketId(int id) async {
    Map<int, int> ids = await _repo.getBasketIds();
    ids.removeWhere((key, _) => key == id);
    await _repo.setBasketIds(ids);
    build((buildable) => buildable.copyWith(
        cardProducts: ids, cardProductIds: ids.keys.toList()));
  }

  // Fetch basket IDs and update the state
  Future<void> getBasketIds() async {
    Map<int, int> ids = await _repo.getBasketIds();
    build((buildable) => buildable.copyWith(
        cardProducts: ids, cardProductIds: ids.keys.toList()));
  }

  onAllClicked(BasketProducts clic) {
    build((buildable) => buildable.copyWith());
  }

  void chooseAllItem(bool isSelected) {
    if (isSelected) {
      build((buildable) =>
          buildable.copyWith(selectedIds: List.from(buildable.cardProductIds)));
    } else {
      buildable.copyWith(selectedIds: []);
    }
  }

  void toggleCheckbox(int productId) {
    final Map<int, bool> checkboxState =
        Map<int, bool>.from(buildable.checkboxState);

    if (checkboxState.containsKey(productId)) {
      checkboxState[productId] = !checkboxState[productId]!; // Toggle state
    } else {
      checkboxState[productId] = true; // Default state to true if not present
    }

    build((buildable) => buildable.copyWith(checkboxState: checkboxState));
  }

  // Set checkbox state for all products

  void toggleAllCheckboxes(bool isSelected) {
    final Map<int, bool> checkboxState = {};

    // Loop through each product and its result list
    for (var product in buildable.products!) {
      for (var result in product.result!) {
        // Use the result id for toggling checkbox state
        checkboxState[result.id!] = isSelected;
      }
    }

//   // Update the state with the new checkboxState and isChoosedAll flag
//   build((buildable) => buildable.copyWith(
//     checkboxState: checkboxState,
//     isChoosedAll: isSelected,
//   ));
// }

    // Choose all items in the basket
    // void chooseAllItem(bool isSelected) {
    //   final List<int> updatedIds = isSelected ? buildable.cardProductIds : [];
    //   build((buildable) =>
    //       buildable.copyWith(selectedIds: updatedIds, isChoosedAll: isSelected));
    // }

    // Set a single product ID as selected or deselected
    void setSelectId(int id) {
      final selectedIds = List<int>.from(buildable.selectedIds);
      if (selectedIds.contains(id)) {
        selectedIds.remove(id);
      } else {
        selectedIds.add(id);
      }
      build((buildable) => buildable.copyWith(selectedIds: selectedIds));
    }

    void clearCheckboxes() {
      build((buildable) => buildable.copyWith(checkboxState: {}));
    }

    void increaseQuantity(int id) {
      final products = buildable.products?.map((product) {
        // Find the result that matches the id and increment its quantity
        final updatedResults = product.result?.map((result) {
          if (result.id == id) {
            return result.copyWith(click_quantity: result.click_quantity! + 1);
          }
          return result;
        }).toList();

        return product.copyWith(result: updatedResults);
      }).toList();

      if (products != null) {
        build((buildable) => buildable.copyWith(products: products));
      }
    }

    void decreaseQuantity(int id) {
      final products = buildable.products?.map((product) {
        // Find the result that matches the id and decrement its quantity if > 0
        final updatedResults = product.result?.map((result) {
          if (result.id == id && result.click_quantity! > 0) {
            return result.copyWith(click_quantity: result.click_quantity! - 1);
          }
          return result;
        }).toList();

        return product.copyWith(result: updatedResults);
      }).toList();

      if (products != null) {
        build((buildable) => buildable.copyWith(products: products));
      }
    }
  }
}
