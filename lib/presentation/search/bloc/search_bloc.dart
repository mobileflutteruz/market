import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:karmango/domain/model/search/search_product.dart';
import 'package:karmango/domain/repository/search_repo.dart';
import 'package:karmango/presentation/basket/components/basket_components.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.searchRepository) : super(const SearchState()) {
    on<OnSearchEvent>(_onSearchEvent);
  }

  final SearchRepository searchRepository;

  Future<void> _onSearchEvent(
    OnSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(apiStatus: ApiStatus.loading));
    final SearchProduct? response = await searchRepository.searchProduct(name: event.text);

    if (response == null) {
      emit(state.copyWith(apiStatus: ApiStatus.error));
    } else {
      emit(
        state.copyWith(
          apiStatus: ApiStatus.success,
          searchProduct: response,
        ),
      );
    }
  }
}
