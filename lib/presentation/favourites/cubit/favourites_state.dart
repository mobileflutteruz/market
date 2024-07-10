part of 'favourites_cubit.dart';

abstract class FavouritesState {}

@freezed
class FavouritesBuildableState
    with _$FavouritesBuildableState
    implements FavouritesState {
  const factory FavouritesBuildableState({
    @Default(0) int imageIndex,
    @Default(0) int cardProductCount,
    @Default([]) List<String> likeIds,
    @Default(0) int infoTabIndex,
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    @Default(false) bool descriptionIsExpandable,
    @Default(false) bool characteristicsIsExpandable,
    Favourite? favourites,
    String? errorMessage,
  }) = _FavouritesBuildableState;
}
