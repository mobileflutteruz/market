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
    
//  try {
//   final List<SearchProduct>? response = await searchRepository.searchProduct(name: event.text);
//   print('Response: $response'); // Bu yerni qo'shing

//   if (response!.isEmpty) {
//     emit(state.copyWith(apiStatus: ApiStatus.error));
//   } else {
//     emit(state.copyWith(apiStatus: ApiStatus.success, searchProducts: response));
//   }
// } catch (e) {
//   print('Error: $e'); // Bu yerni qo'shing
//   emit(state.copyWith(apiStatus: ApiStatus.error));
// }
//   }
// }


// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:karmango/presentation/search/bloc/search_event.dart';
// // import 'package:karmango/presentation/search/bloc/search_state.dart';
// // import 'package:karmango/presentation/search/components/service.dart';

// // class PostBloc extends Bloc<PostEvent, PostState> {
// //   final PostRepository postRepository;

// //   PostBloc(this.postRepository) : super(PostInitial()) {
// //     on<FetchPosts>((event, emit) async {
// //       emit(PostLoading());
// //       try {
// //         final posts = await postRepository.fetchPosts();
// //         emit(PostLoaded(posts));
// //       } catch (e) {
// //         emit(PostError("Failed to fetch posts"));
// //       }
// //     });

// //     on<SearchPosts>((event, emit) async {
// //       final currentState = state;
// //       if (currentState is PostLoaded) {
// //         final filteredPosts = currentState.posts
// //             .where((post) => post.title.contains(event.query))
// //             .toList();
// //         emit(PostLoaded(filteredPosts));
// //       }
// //     });
// //   }
// // }
