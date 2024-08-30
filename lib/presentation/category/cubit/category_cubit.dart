
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit
    extends BuildableCubit<CategoryState, CategoryBuildableState> {
  CategoryCubit(this._dataRepository) : super(const CategoryBuildableState()) {
    // fetchCategory();
  }

  final DataRepository _dataRepository;

  fetchCategory() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final List<CategoryModel> categories =
          await _dataRepository.getCategories();
      print("Categories fetched successfully: $categories");

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          category: categories,
        ),
      );
    } catch (e) {
      print("fetchCategory error: $e");
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
