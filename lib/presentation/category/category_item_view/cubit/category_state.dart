// category_state.dart

part of 'category_cubit.dart';

abstract class CategoryProductState {}

@freezed
class CategoryProductBuildableState extends CategoryProductState
    with _$CategoryProductBuildableState {
  const factory CategoryProductBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    ProductModel? categoryProduct,
    dynamic error,
  }) = _CategoryProductBuildableState;
}
