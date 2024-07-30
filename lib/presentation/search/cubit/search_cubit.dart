// import 'dart:async';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:karmango/data/preferences/token_preferences.dart';

// import 'package:karmango/domain/repository/main_repository.dart';
// import 'package:karmango/presentation/search/cubit/search_state.dart';

// part 'search_state.dart';
// part 'search_cubit.freezed.dart';
// @injectable
// class SearchCubit extends Cubit<SearchState> {
//   final TokenPreference _preferences;
//   final MainRepository _mainRepository;
//   SearchCubit(this._preferences, this._mainRepository)
//       : super(const SearchBuildableState());

//   // Existing methods here...

//   int? nextPageKey = 0;
//   final int _size = 10;
//   String _search = "";
//   Timer? _debounce;

//   Future<void> fetch(int page) async {
//     try {
//       final products = await _mainRepository.fetchSearchProducts(_search, page, _size);
//       nextPageKey = products.length < _size ? null : page + 1;
//       emit((state as SearchBuildableState).copyWith(products: products));
//     } catch (e) {
//       print('Error fetching products: $e');
//     }
//   }

//   void initCalendar(DateTime time, DateTime time2) {
//     emit((state as SearchBuildableState).copyWith(focusedDay: time, focusedDa2: time2));
//   }
// }
