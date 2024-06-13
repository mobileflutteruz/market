import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/cart_product/cart_product.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@Injectable()
class CategoryCubit extends BuildableCubit<CategoryState, CategoryBuildable> {
  CategoryCubit(this._mainRepository, this.repo)
      : super(const CategoryBuildable()) {
    fetchCategory();
  }

  final MainRepository _mainRepository;
  final DataRepository repo;

  Future<void> fetchCategory() async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final categories = await repo.getCategories();
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          failed: false,
          category: categories,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: false,
          failed: true,
          error: e.toString(),
        ),
      );
    }
  }
}
