// // // To parse this JSON data, do
// // //
// // //     final profileModel = profileModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

// // ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

// // String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

// // @freezed
// // class ProfileModel with _$ProfileModel {
// //     const factory ProfileModel({
// //         required bool status,
// //         required Result result,
// //     }) = _ProfileModel;

// //     factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
// // }

// // @freezed
// // class Result with _$Result {
// //     const factory Result({
// //         required int user_id,
// //         required String name,
// //         required String phone,
// //         required dynamic image,
// //     }) = _Result;

// //     factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
// // }

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'profile_model.freezed.dart';
// part 'profile_model.g.dart';

// @freezed
// class ProfileModel with _$ProfileModel {
//   const factory ProfileModel({
//      bool? status,
//    Result? result,
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
//     String? image,
//   }) = _Result;

//   factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
// }



@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required bool status,
    required Result result,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required int user_id,
    required String name,
    required String phone,
    String? image,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
