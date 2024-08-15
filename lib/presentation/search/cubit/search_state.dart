part of 'search_cubit.dart';

abstract class SearchState {}

@freezed
class SearchdBuildableState extends SearchState with _$SearchdBuildableState {
  const factory SearchdBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failure,
    dynamic error,
    List<SearchProduct>? product,
    SearchedHistory? searched,
    AllProductDeleted? allDeleted,
    DeletedId? deletedId,
  }) = _SearchedBuildableState;
}

// abstract class SearchState {}

// class SearchBuildableState extends SearchState with _$SearchBuildableState {
//   const factory SearchBuildableState({
//     @Default(false) bool loading,
//     @Default(false) bool success,
//     @Default(false) bool failure,
//     dynamic error,
//     List<SearchProduct>? product,
//     SearchedHistory? searched,
//     AllProductDeleted? allDeleted,
//     DeletedId? deletedId,
//   }) = _SearchBuildableState;
// }
