import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/product/product.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import '../../../../../domain/repository/main_repository.dart';


part 'details_state.dart';

part 'details_cubit.freezed.dart';

@Injectable()
class DetailsCubit extends BuildableCubit<DetailsState, DetailsBuildableState> {
  DetailsCubit(this.mainRepo, this.repo)
      : super( DetailsBuildableState()) {
    getLikeIds();
  }

  final MainRepository mainRepo;
  final DataRepository repo;

 
  Future fetchProduct(int productId) async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final ProductDataModel product = await repo.getProduct(productId);

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          product: product,
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

  // init() async {
  //   await getLikeIds();
  // }

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

  // setLikeId(int likeId) async {
  //   List<String> ids = await mainRepo.getLikeIds() ?? [];
  //   // List<String> ids = await mainRepo.getLikeIds() ?? [];
  //   debugPrint("List<String> ids = await _repository.getLikeIds() ?? [] $ids");

  //   if (!ids.contains(likeId.toString())) {
  //     ids.add(likeId.toString());
  //   } else {
  //     ids.removeWhere((p) => p == likeId.toString());
  //   }
  //   await mainRepo.setLikeIds(ids);
  //   await repo.createFavorite(productId: likeId);

  //   build(
  //     (buildable) => buildable.copyWith(
  //       likeIds: ids,
  //     ),
  //   );
  //   debugPrint("$ids");
  // }

  getLikeIds() async {
    List<String> ids = await mainRepo.getLikeIds() ?? [];

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
