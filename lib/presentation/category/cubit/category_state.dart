part of 'category_cubit.dart';

abstract class CategoryState {}

@freezed
class CategoryBuildableState extends CategoryState
    with _$CategoryBuildableState {
  const factory CategoryBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    List<CategoryModel>? category,
    @Default([]) List<String> likeIds,
    ProductModel? products,
    dynamic error,
  }) = _CategoryBuildableState;
}
