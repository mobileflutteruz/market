// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:karmango/domain/model/mobile/category/category.dart';
// import 'package:karmango/domain/repository/data_repository.dart';
// import 'package:karmango/presentation/components/buildable_cubit.dart';

// part 'category_state.dart';
// part 'category_cubit.freezed.dart';

// @Injectable()
// class CategoryCubit extends BuildableCubit<CategoryState, CategoryBuildable> {
//   CategoryCubit(this._dataRepository) : super(const CategoryBuildable());

//   final DataRepository _dataRepository;

//  Future fetchCategory() async {
//     build(
//       (buildable) => buildable.copyWith(
//         loading: true,
//       ),
//     );
//     try {
//       final CategoryModel? category = await _dataRepository.getCategories();

//       build(
//         (buildable) => buildable.copyWith(
//           loading: false,
//           success: true,
//           category: category,
//         ),
//       );
//     } catch (e) {
//       print("fetchProducts error---------------${e.toString()}");
    
//       build(
//         (buildable) => buildable.copyWith(
//           loading: false,
//           failed: true,
//           error: e.toString(),
          
//         ),
  
//       );
//     }
//   }
// }


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:karmango/domain/model/mobile/category/category.dart';
import 'package:karmango/domain/repository/data_repository.dart';


part 'category_state.dart';
part 'category_cubit.freezed.dart';

@Injectable()
class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit(this._dataRepository) : super(const CategoryState.initial());

  final DataRepository _dataRepository;

  Future<void> fetchCategory() async {
    emit(const CategoryState.loading());
    try {
      final List<CategoryModel> categories = await _dataRepository.getCategories();
      emit(CategoryState.success(categories));
    } catch (e) {
      emit(CategoryState.failure(e.toString()));
    }
  }
}