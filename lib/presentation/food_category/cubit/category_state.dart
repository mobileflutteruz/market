part of 'category_cubit.dart';

abstract class CategoryState {}

@freezed
class CategoryBuildable extends CategoryState with _$CategoryBuildable {
  const factory CategoryBuildable({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
     CategoryModel? category,
     CartProductModel? cartProductModel,
     Product? product,
    dynamic error,
  }) = _CategoryBuildable;
}

class LoadingCategoryState extends CategoryState {}

class FailedCategoryState extends CategoryState {}
