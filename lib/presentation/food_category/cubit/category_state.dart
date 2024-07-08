// part of 'category_cubit.dart';

// abstract class CategoryState {}

// @freezed
// class CategoryBuildable extends CategoryState with _$CategoryBuildable {
//   const factory CategoryBuildable({
//     @Default(false) bool loading,
//     @Default(false) bool success,
//     @Default(false) bool failed,
//     CategoryModel? category,
//     // CartProductModel? cartProductModel,
//     // Product? product,
//     dynamic error,
//   }) = _CategoryBuildable;
// }

part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.success(List<CategoryModel> categories) = _Success;
  const factory CategoryState.failure(String error) = _Failure;
}