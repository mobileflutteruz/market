import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/repository/main_repository.dart';


part 'food_my_order_state.dart';
part 'food_my_order_cubit.freezed.dart';

@Injectable()
class FoodMyOrderCubit extends BuildableCubit<FoodMyOrderState, FoodMyOrderBuildableState> {
  FoodMyOrderCubit(this._repository) : super(const FoodMyOrderBuildableState());
  final MainRepository _repository;



  changeTabIndex({required int tabIndex}) {
    build(
          (buildable) => buildable.copyWith(
        tabIndex: tabIndex == 0 ? 1 : 0,
      ),
    );
  }

  setMyOrderIds(Map<int, int> values) async {
    Map<int, int> ids = await _repository.getMyOrderIds();

    if (!ids.keys.contains(values.keys.first)) {
      ids.addAll(values);
    }
    await _repository.setMyOrderIds(ids);
    build(
          (buildable) => buildable.copyWith(
          cardProducts: ids, cardProductIds: ids.keys.toList()),
    );
  }

  removeMyOrderId(int id) async {
    Map<int, int> ids = await _repository.getMyOrderIds();

    ids.removeWhere((key, value) => key == id);

    await _repository.setMyOrderIds(ids);

    build(
          (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }

  getMyOrderIds() async {
    Map<int, int> ids = await _repository.getMyOrderIds();

    build(
          (buildable) => buildable.copyWith(
        cardProducts: ids,
        cardProductIds: ids.keys.toList(),
      ),
    );
  }




}