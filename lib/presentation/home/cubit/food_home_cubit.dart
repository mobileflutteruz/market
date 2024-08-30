import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/home/home.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'food_home_state.dart';

part 'food_home_cubit.freezed.dart';

@injectable
class FoodHomeCubit
    extends BuildableCubit<FoodHomeState, FoodHomeBuildableState> {
  FoodHomeCubit(this._repository, this.repo, this.auth)
      : super(const FoodHomeBuildableState());

  final DataRepository repo;
  final MainRepository _repository;
  final AuthRepository auth;

  void changeImageIndex(int index) {
    build((buildable) => buildable.copyWith(imageIndex: index));
  }

  void changeTabs(int index) {
    build((buildable) => buildable.copyWith(currentIndex: index));
  }

  void changeTabIndex(int index) {
    build((buildable) => buildable.copyWith(infoTabIndex: index));
  }

  void changeDescriptionExpandable() {
    build((buildable) => buildable.copyWith(
        descriptionIsExpandable: !buildable.descriptionIsExpandable));
  }

  void changeCharacteristicsExpandable() {
    build((buildable) => buildable.copyWith(
        characteristicsIsExpandable: !buildable.characteristicsIsExpandable));
  }

  void cardAddProduct() {
    build((buildable) => buildable.copyWith(
        cardProductCount: buildable.cardProductCount == 5
            ? 5
            : buildable.cardProductCount + 1));
  }

  void cardReduceProduct() {
    build((buildable) => buildable.copyWith(
        cardProductCount: buildable.cardProductCount == 0
            ? 0
            : buildable.cardProductCount - 1));
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
