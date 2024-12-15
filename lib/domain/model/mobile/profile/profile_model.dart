import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

// @freezed
// class ProfileModel with _$ProfileModel {
//   const factory ProfileModel({
//     bool? status,
//     Result? result,
//   }) = _ProfileModel;

//   factory ProfileModel.fromJson(Map<String, dynamic> json) =>
//       _$ProfileModelFromJson(json);
// }

// @freezed
// class Result with _$Result {
//   const factory Result({
//     int? user_id,
//     String? name,
//     String? phone,
//     // String? image = ,
//   }) = _Result;

//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
// }


@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required bool status,
    required UserResult result,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
}

@freezed
class UserResult with _$UserResult {
  const factory UserResult({
    required int user_id,
    required String name,
    required String phone,
    String? image,
  }) = _UserResult;

  factory UserResult.fromJson(Map<String, dynamic> json) => _$UserResultFromJson(json);
}