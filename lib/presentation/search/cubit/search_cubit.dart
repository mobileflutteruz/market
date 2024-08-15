import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/search/all_product_deleted/all_product_deleted.dart';
import 'package:karmango/domain/model/search/search_product.dart';
import 'package:karmango/domain/model/search/searched/searched_history.dart';
import 'package:karmango/domain/repository/search_repo.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:karmango/domain/model/search/deletedId/deletedId.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

// part 'category_state.dart';
// part 'category_cubit.freezed.dart';

@Injectable()
class SearchedCubit extends BuildableCubit<SearchState, SearchdBuildableState> {
  SearchedCubit(this._dataRepository) : super(SearchdBuildableState()) {
    // fetchCategory();
  }

  final SearchRepository _dataRepository;

  Future<void> searchProducts(String text) async {
    build(
      (buildable) => buildable.copyWith(loading: true),
    );
    // try {
    final List<SearchProduct>? products =
        await _dataRepository.searchProduct(name: text);
    build(
      (buildable) => buildable.copyWith(
        loading: false,
        success: true,
        failure: false,
        product: products,
      ),
    );
    // } catch (e) {
    //   print("fetchProducts error------------------------------------------");
    //   print(e);
    //   build(
    //     (buildable) => buildable.copyWith(
    //       loading: false,
    //       failure: true,
    //       error: e.toString(),
    //     ),
    //   );
    // }
  }

  Future<void> searchedHistory() async {
    build(
      (buildable) => buildable.copyWith(loading: true),
    );

    try {
      final SearchedHistory searched = await _dataRepository.searchedHistory();
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
    build(
      (buildable) => buildable.copyWith(
        loading: true,
      ),
    );
    try {
      final DeletedId? deletedId =
          await _dataRepository.searchDeletedId(index: index);

      build(
        (buildable) => buildable.copyWith(
            loading: false,
            failure: false,
            success: true,
            deletedId: deletedId),
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
}

// Future<void> searchProducts(String text) async {
//   build(
//     (buildable) => buildable.copyWith(loading: true),
//   );
//   try {
//     final List<SearchProduct>? products = await repo.searchProduct(name: text);
//     build(
//       (buildable) => buildable.copyWith(
//         loading: false,
//         success: true,
//         product: products,
//       ),
//     );
//   } catch (e) {
//     print("fetchProducts error------------------------------------------");
//     print(e);
//     build(
//       (buildable) => buildable.copyWith(
//         loading: false,
//         failure: true,
//         error: e.toString(),
//       ),
//     );
//   }
// }

// Future<void> searchedHistory() async {
//   emit(state.copyWith(loading: true));
//   try {
//     final SearchedHistory searched = await repo.searchedHistory();
//     emit(state.copyWith(
//       loading: false,
//       success: true,
//       searched: searched,
//     ));
//   } catch (e) {
//     print("SearchedHistory error------------------------------------------");
//     print(e);
//     emit(state.copyWith(
//       loading: false,
//       failure: true,
//       error: e.toString(),
//     ));
//   }
// }

// Future<void> deletById(int index) async {
//   emit(state.copyWith(loading: true));
//   try {
//     final DeletedId? searched = await repo.searchDeletedId(index: index);
//     emit(state.copyWith(
//       loading: false,
//       success: true,
//       deletedId: searched,
//     ));
//   } catch (e) {
//     print("SearchedHistory error------------------------------------------");
//     print(e);
//     emit(state.copyWith(
//       loading: false,
//       failure: true,
//       error: e.toString(),
//     ));
//   }
// }

// Future<void> deleteAll() async {
//   emit(state.copyWith(loading: true));
//   try {
//     final AllProductDeleted? allDeleted = await repo.searchDeletedAll();
//     emit(state.copyWith(
//       loading: false,
//       success: true,
//       allDeleted: allDeleted,
//     ));
//   } catch (e) {
//     print("SearchedHistory error------------------------------------------");
//     print(e);
//     emit(state.copyWith(
//       loading: false,
//       failure: true,
//       error: e.toString(),
//     ));
//   }
// }
