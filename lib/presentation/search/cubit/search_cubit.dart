
import 'dart:async';
import 'package:karmango/data/preferences/token_preferences.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/domain/repository/main_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/search/search_product.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit
    extends BuildableCubit<SearchState, SearchBuildableState> {
    SearchCubit(this._preferences, this._mainRepository, this.dataRepo)
      : super(const SearchBuildableState());

  final TokenPreference _preferences;
  final MainRepository _mainRepository;
  final DataRepository dataRepo;



  int? nextPageKey = 0;
  final int _size = 10;
  String _search = "";
  Timer? _debounce;

  Future<void> fetch() async {
    try {
      final products = await dataRepo.searchProducts(_search);
      emit((state as SearchBuildableState).copyWith(products: products));
    } catch (e) {
      print('Error fetching products: $e');
    }
  }

  void initCalendar(DateTime time, DateTime time2) {
    emit((state as SearchBuildableState)
        .copyWith(focusedDay: time, focusedDa2: time2));
  }
}
