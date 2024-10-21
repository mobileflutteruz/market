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
  // void setSelectIds(List<int> productIds) {
  //   final selectedIds = List<int>.from(buildable.selectedIds);
  //   debugPrint("Current selected IDs: $selectedIds");

  //   for (final productId in productIds) {
  //     if (selectedIds.contains(productId)) {
  //       selectedIds.remove(productId);
  //     } else {
  //       selectedIds.add(productId);
  //     }
  //   }
  //   debugPrint("Updated selected IDs: $selectedIds");

  //   build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  // }

  // Clear all selected IDs
  // void clearSelectIds(List<int> selectedIds) {
  //   build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  // }

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
    try {
      // Assuming _dataRepo.deleteCartById returns a Future<bool> or similar
      bool isDeleted = await _dataRepo.deleteBasket(productId: id);

      if (isDeleted) {
        // Fetch the current basket IDs from the repo
        Map<int, int> ids = await _repo.getBasketIds();

        // Remove the item with the given ID
        ids.remove(id);

        // Save the updated basket IDs back to the repo
        await _repo.setBasketIds(ids);

        // Update the buildable state with the new basket IDs
        build((buildable) => buildable.copyWith(
            cardProducts: ids, cardProductIds: ids.keys.toList()));
      } else {
        // Handle the case where the item wasn't deleted successfully
        // You can throw an exception or show an error message
        throw Exception('Failed to delete the item from the basket');
      }
    } catch (e) {
      // Handle any errors that occur during the process
      print('Error while removing basket ID: $e');
    }
  }

  // Future<void> removeBasketId(int id) async {
  //   // Map<int, int> ids = await _repo.getBasketIds();
  //   Map<int, int> ids = (await _dataRepo.deleteCartById(productId: id)) as Map<int, int>;
  //   ids.removeWhere((key, _) => key == id);
  //   await _repo.setBasketIds(ids);
  //   build((buildable) => buildable.copyWith(
  //       cardProducts: ids, cardProductIds: ids.keys.toList()));
  // }

  // Fetch basket IDs and update the state
  Future<void> getBasketIds() async {
    Map<int, int> ids = await _repo.getBasketIds();
    build((buildable) => buildable.copyWith(
        cardProducts: ids, cardProductIds: ids.keys.toList()));
  }

  // void setSelectIds(List<int> productIds) {
  //   final selectedIds = List<int>.from(buildable.selectedIds);
  //   debugPrint("Current selected IDs: $selectedIds");

  //   for (final productId in productIds) {
  //     if (selectedIds.contains(productId)) {
  //       selectedIds.remove(productId);
  //     } else {
  //       selectedIds.add(productId);
  //     }
  //   }
  //   debugPrint("Updated selected IDs: $selectedIds");

  //   build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  // }

  // Clear all selected IDs
  // void clearSelectIds(List<int> selectedIds) {
  //   build((buildable) => buildable.copyWith(selectedIds: selectedIds));
  // }
  // chooseAllItem(bool value) {
  //   build(
  //     (buildable) => buildable.copyWith(
  //       isChoosedAll: value,
  //     ),
  //   );
  // }

  // clearSelectIds() {
  //   build(
  //     (buildable) => buildable.copyWith(
  //      selectedIds: [], isChoosedAll: false
  //     ),
  //   );
  // }
  void toggleAllCheckboxes(bool isSelected) {
    if (isSelected) {
      setSelectIds(buildable.cardProductIds); // Barcha mahsulotlarni tanlash
    } else {
      clearSelectIds(); // Barcha tanlovlarni tozalash
    }
  }

  void toggleIndividualCheckbox(int productId, bool isSelected) {
    List<int> updatedSelectedIds = List<int>.from(buildable.selectedIds);

    if (isSelected) {
      updatedSelectedIds.add(productId); // Add the productId if selected
    } else {
      updatedSelectedIds
          .remove(productId); // Remove the productId if deselected
    }

    // Update state with new selectedIds and check if all items are selected
    build((buildable) => buildable.copyWith(
        selectedIds: updatedSelectedIds,
        isChoosedAll:
            updatedSelectedIds.length == buildable.cardProductIds.length));
  }

  // void setSelectIds(List<int> productIds) {
  //   build((buildable) =>
  //       buildable.copyWith(      selectedIds: productIds,
  //     isAllSelected: productIds.length == buildable.cardProductIds.length));

  // }

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

  chooseAllItem(bool value) {
    build(
      (buildable) => buildable.copyWith(
        isChoosedAll: value,
      ),
    );
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
