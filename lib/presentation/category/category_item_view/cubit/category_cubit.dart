import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@Injectable()
class CategoryProductCubit extends BuildableCubit<CategoryProductState,
    CategoryProductBuildableState> {
  CategoryProductCubit(this._dataRepository)
      : super(const CategoryProductBuildableState());

  final DataRepository _dataRepository;

  fetchCategoryProduct(int productId) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final ProductModel? categoryProduct =
          await _dataRepository.getCategoryProducts(productId);
      print( _dataRepository.getCategoryProducts(productId)); // Assuming you have a way to get this data

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          categoryProduct: categoryProduct,
        ),
      );
    } catch (e, s) {
      print("fetchCategoryProduct error---------------${e.toString()}");
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
