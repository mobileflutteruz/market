part of 'favourites_cubit.dart';

abstract class FavouritesState {}

@freezed
class FavouritesBuildableState extends FavouritesState
    with _$FavouritesBuildableState {
  const factory FavouritesBuildableState({
    @Default(0) int imageIndex,
    @Default(0) int cardProductCount,
    @Default([]) List<String> likeIds,
    @Default(0)  int infoTabIndex,
    @Default(false)  bool descriptionIsExpandable,
    @Default(false)  bool characteristicsIsExpandable,

  }) = _FavouritesBuildableState;
}
