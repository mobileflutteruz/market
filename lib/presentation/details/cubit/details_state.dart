part of 'details_cubit.dart';

abstract class DetailsState {}

@freezed
class DetailsBuildableState extends DetailsState with _$DetailsBuildableState {
  const factory DetailsBuildableState({
    @Default(0) int imageIndex,
    @Default(0) int cardProductCount,
    @Default([]) List<String> likeIds,
    @Default(0) int infoTabIndex,
    @Default(false) bool descriptionIsExpandable,
    @Default(false) bool characteristicsIsExpandable,
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    @Default(null) ProductDataModel? product,
    // List<SimilarProduct>? similarProduct,

    @Default(null) String? message,
  }) = _DetailsBuildableState;
}
