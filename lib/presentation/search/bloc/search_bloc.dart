// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:injectable/injectable.dart';
// import 'package:karmango/domain/model/search/search_product.dart';
// import 'package:karmango/domain/repository/search_repo.dart';


// part 'search_event.dart';

// part 'search_state.dart';

// @injectable
// class SearchBloc extends Bloc<SearchEvent, SearchState> {
//   SearchBloc(this.searchRepository) : super(const SearchState()) {
//     on<OnSearchEvent>(onSearchEvent);
//   }

//   final SearchRepository searchRepository;

//   Future<void> onSearchEvent(
//     OnSearchEvent event,
//     Emitter<SearchState> emit,
//   ) async {
//     emit(state.copyWith(apiStatus: ApiStatus.loading));
//     final SearchProduct? response =
//         await searchRepository.searchProduct(name: event.text);
//     print("TRUEEEEEEEEEEEEEEEe");

//     if (response == null) {
//       emit(state.copyWith(apiStatus: ApiStatus.error));
//       print("ERORRRRRRRRRRR");
//     } else {
//       emit(
//         state.copyWith(
//           apiStatus: ApiStatus.success,
//           searchProduct: response,
//         ),
//       );
//     }
//   }
// }
