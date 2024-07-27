
part of 'search_cubit.dart';

abstract class SearchState {}

@freezed
@freezed
class SearchBuildableState extends SearchState
    with _$SearchBuildableState {
  const factory SearchBuildableState({
   
  @Default(false) bool loading,
    @Default(false) bool isModal_hud,
    @Default(false) bool success,
    @Default(false) bool failed,
    @Default(true)  bool isExpanded,
    dynamic error,
    @Default([]) List<String> selectedDistrects,
    @Default(0) int allRoomsCount,
    @Default(0) int olderAgesRoomCount,
    @Default(0) int youngerAgesRoomCount,
    @Default([]) List<String> selectedAdvantages,
    @Default("")  String sorted,
    DateTime? focusedDay,
    DateTime? focusedDa2,
    int? nextPageKey,
    @Default([]) List<SearchProduct> products,
  }) = _SearchBuildableState;
}




  // @Default(false) bool loading,
  //   @Default(false) bool isModal_hud,
  //   @Default(false) bool success,
  //   @Default(false) bool failed,
  //   @Default(true) late bool isExpanded,
  //   dynamic error,
  //   @Default([]) List<String> selectedDistrects,
  //   @Default(0) int allRoomsCount,
  //   @Default(0) int olderAgesRoomCount,
  //   @Default(0) int youngerAgesRoomCount,
  //   @Default([]) List<String> selectedAdvantages,
  //   @Default("") late String sorted,
  //   DateTime? focusedDay,
  //   DateTime? focusedDa2,
  //   int? nextPageKey,
  //   @Default([]) List<SearchProduct> products,