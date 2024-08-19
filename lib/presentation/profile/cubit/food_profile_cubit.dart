import 'dart:convert';

import 'package:karmango/domain/model/mobile/user/user.dart';
// import 'package:karmango/domain/model/user/user_model.dart';
import 'package:karmango/domain/repository/auth_repository.dart';
import 'package:karmango/presentation/components/buildable_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
part 'food_profile_state.dart';

part 'food_profile_cubit.freezed.dart';

@Injectable()
class FoodProfileCubit
    extends BuildableCubit<FoodProfileState, FoodProfileBuildableState> {
  FoodProfileCubit(this.authRepo) : super(const FoodProfileBuildableState());
  final AuthRepository authRepo;
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

  foodSetUser(UserModel? user) {
    build(
      (buildable) => buildable.copyWith(
        user: user,
      ),
    );
  }




  Future<void> change({
    required String number,
  }) async {
    build(
      (buildable) => buildable.copyWith(
        loading: true,
        failure: false,
      ),
    );
    try {
      await authRepo.forgetPassword(phone: number);
      build(
        (buildable) => buildable.copyWith(
          success: true,
          loading: false,
          failure: false,
        ),
      );
    } catch (e) {
      build(
        (buildable) => buildable.copyWith(
          loading: false,
          failure: true,
          errorMessage: e.toString(),
        ),
      );
    }
  }





  Future<void> uploadProfileImage(String filePath) async {
    build((state) => state.copyWith(loading: true));
    try {
      var request = http.MultipartRequest(
          'POST', Uri.parse('karmango.shop.dukan.uz/api'));
      request.files.add(await http.MultipartFile.fromPath('image', filePath));
      var response = await request.send();

      if (response.statusCode == 200) {
        var responseBody = await response.stream.bytesToString();
        var data = jsonDecode(responseBody);

        if (data["status"] == true) {
          build((state) => state.copyWith(
                loading: false,
                success: true,
              ));
        } else {
          build((state) => state.copyWith(
                loading: false,
                failure: true,
                errorMessage: 'Failed to upload image',
              ));
        }
      } else {
        build((state) => state.copyWith(
              loading: false,
              failure: true,
              errorMessage: 'Failed to upload image',
            ));
      }
    } catch (e) {
      build((state) => state.copyWith(
            loading: false,
            failure: true,
            errorMessage: 'Something went wrong: $e',
          ));
      print('Something went wrong: $e');
    }
  }

  logout() async {
    authRepo.logout();
    // emit(const ProfileState.update());
  }
}
