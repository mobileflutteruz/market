part of 'search_bloc.dart';

class SearchState extends Equatable {
  final ApiStatus apiStatus;
  final List<SearchProduct> searchProducts; // Ism to'g'ri ekanligini tekshiring

  const SearchState({
    this.apiStatus = ApiStatus.none,
    this.searchProducts = const [],
  });

  SearchState copyWith({
    ApiStatus? apiStatus,
    List<SearchProduct>? searchProducts,
  }) {
    return SearchState(
      apiStatus: apiStatus ?? this.apiStatus,
      searchProducts: searchProducts ?? this.searchProducts,
    );
  }

  @override
  List<Object?> get props => [apiStatus, searchProducts];
}

enum ApiStatus { none, loading, success, error }


