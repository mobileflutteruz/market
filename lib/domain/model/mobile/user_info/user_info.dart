import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
    const factory UserInfo({
        bool? status,
        Result? result,
    }) = _UserInfo;

    factory UserInfo.fromJson(Map<String, dynamic> json) => _$UserInfoFromJson(json);
}

@freezed
class Result with _$Result {
    const factory Result({
        int? user_id,
        String? name,
        dynamic phone,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
