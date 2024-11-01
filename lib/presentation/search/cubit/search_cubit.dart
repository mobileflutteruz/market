import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/user/user.dart';
import 'package:karmango/domain/model/mobile/user_info/user_info.dart';
import 'package:karmango/domain/model/search/all_product_deleted/all_product_deleted.dart';
import 'package:karmango/domain/model/search/search_product.dart';
import 'package:karmango/domain/model/search/searched/searched_history.dart';
import 'package:karmango/domain/repository/data_repository.dart';
import 'package:karmango/domain/repository/search_repo.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/search/deletedId/deletedId.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

@Injectable()
class SearchedCubit extends BuildableCubit<SearchState, SearchdBuildableState> {
  SearchedCubit(this._dataRepository, this.repo)
      : super(SearchdBuildableState());

  final DataRepository repo;
  final SearchRepository _dataRepository;
Future<void> searchProducts(String query) async {
  try {
    build((buildable) => buildable.copyWith(loading: true));

    final List<SearchProduct>? products = await _dataRepository.searchProduct(name: query);

    if (products != null && products.isNotEmpty) {
      build((buildable) => buildable.copyWith(
        loading: false,
        success: true,
        failure: false,
        product: products,
      ));
    } else {
      build((buildable) => buildable.copyWith(
        loading: false,
        success: true,
        failure: false,
        product: [],
      ));
    }
  } catch (e) {
    build((buildable) => buildable.copyWith(
      loading: false,
      failure: true,
      error: e.toString(),
    ));
  }
}



  Future<void> searchedHistory() async {
    build(
      (buildable) => buildable.copyWith(loading: true),
    );

    try {
      final SearchedHistory? searched = await _dataRepository.searchedHistory();
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          success: true,
          searched: searched,
        ),
      );
    } catch (e) {
      print("SearchedHistory error------------------------------------------");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          error: e.toString(),
        ),
      );
    }
  }

  Future<void> deletById(int index) async {
    // Ensure the index is passed correctly as an int
    if (index is! int) {
      throw ArgumentError(
          "The index should be an integer, but received a ${index.runtimeType}");
    }

    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );

    try {
      // Ensure the searchDeletedId function receives the correct index
      final DeletedId? deletedId =
          await _dataRepository.searchDeletedId(index: index);

      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: false,
          success: true,
          deletedId: deletedId,
        ),
      );
    } catch (e, stackTrace) {
      print("deletById error------------------------------------------");
      print(e);
      print(stackTrace);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          error: e.toString(),
        ),
      );
    }
  }
  setUser(){

  }

  Future<void> deleteAll() async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final AllProductDeleted? allDeleted =
          await _dataRepository.searchDeletedAll();
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: false,
          success: true,
          allDeleted: allDeleted,
        ),
      );
    } catch (e) {
      print("deleteAll error------------------------------------------");
      print(e);
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          error: e.toString(),
        ),
      );
    }
  }
}
