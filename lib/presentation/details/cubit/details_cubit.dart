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
      : super(const DetailsBuildableState());

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
