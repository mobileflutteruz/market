// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileEditModel _$ProfileEditModelFromJson(Map<String, dynamic> json) {
  return _ProfileEditModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileEditModel {
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this ProfileEditModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileEditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileEditModelCopyWith<ProfileEditModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEditModelCopyWith<$Res> {
  factory $ProfileEditModelCopyWith(
          ProfileEditModel value, $Res Function(ProfileEditModel) then) =
      _$ProfileEditModelCopyWithImpl<$Res, ProfileEditModel>;
  @useResult
  $Res call({bool status, String message, int code, String phone});
}

/// @nodoc
class _$ProfileEditModelCopyWithImpl<$Res, $Val extends ProfileEditModel>
    implements $ProfileEditModelCopyWith<$Res> {
  _$ProfileEditModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEditModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileEditModelImplCopyWith<$Res>
    implements $ProfileEditModelCopyWith<$Res> {
  factory _$$ProfileEditModelImplCopyWith(_$ProfileEditModelImpl value,
          $Res Function(_$ProfileEditModelImpl) then) =
      __$$ProfileEditModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, String message, int code, String phone});
}

/// @nodoc
class __$$ProfileEditModelImplCopyWithImpl<$Res>
    extends _$ProfileEditModelCopyWithImpl<$Res, _$ProfileEditModelImpl>
    implements _$$ProfileEditModelImplCopyWith<$Res> {
  __$$ProfileEditModelImplCopyWithImpl(_$ProfileEditModelImpl _value,
      $Res Function(_$ProfileEditModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEditModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? code = null,
    Object? phone = null,
  }) {
    return _then(_$ProfileEditModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileEditModelImpl implements _ProfileEditModel {
  const _$ProfileEditModelImpl(
      {required this.status,
      required this.message,
      required this.code,
      required this.phone});

  factory _$ProfileEditModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileEditModelImplFromJson(json);

  @override
  final bool status;
  @override
  final String message;
  @override
  final int code;
  @override
  final String phone;

  @override
  String toString() {
    return 'ProfileEditModel(status: $status, message: $message, code: $code, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEditModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, code, phone);

  /// Create a copy of ProfileEditModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEditModelImplCopyWith<_$ProfileEditModelImpl> get copyWith =>
      __$$ProfileEditModelImplCopyWithImpl<_$ProfileEditModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileEditModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileEditModel implements ProfileEditModel {
  const factory _ProfileEditModel(
      {required final bool status,
      required final String message,
      required final int code,
      required final String phone}) = _$ProfileEditModelImpl;

  factory _ProfileEditModel.fromJson(Map<String, dynamic> json) =
      _$ProfileEditModelImpl.fromJson;

  @override
  bool get status;
  @override
  String get message;
  @override
  int get code;
  @override
  String get phone;

  /// Create a copy of ProfileEditModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileEditModelImplCopyWith<_$ProfileEditModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
