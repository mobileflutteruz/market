import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';



part 'food_profile_state.dart';

part 'food_profile_cubit.freezed.dart';

@Injectable()
class FoodProfileCubit extends BuildableCubit<FoodProfileState, FoodProfileBuildableState> {
  FoodProfileCubit() : super(const FoodProfileBuildableState());

  changeName(String name) {
    build(
      (buildable) => buildable.copyWith(userName: name),
    );
  }

  foodChangeNotificationValue(bool value) {
    build(
      (buildable) => buildable.copyWith(notificationValue: value),
    );
  }

  foodSetUser(UserModel? profileUser) {
    build(
      (buildable) => buildable.copyWith(
        profileUser: profileUser,
      ),
    );
  }
}
