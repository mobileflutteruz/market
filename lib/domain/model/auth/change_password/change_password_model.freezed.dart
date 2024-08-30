// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordModel _$ChangePasswordModelFromJson(Map<String, dynamic> json) {
  return _ChangePasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordModel {
  bool? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get user_name => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get token_type => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordModelCopyWith<ChangePasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordModelCopyWith<$Res> {
  factory $ChangePasswordModelCopyWith(
          ChangePasswordModel value, $Res Function(ChangePasswordModel) then) =
      _$ChangePasswordModelCopyWithImpl<$Res, ChangePasswordModel>;
  @useResult
  $Res call(
      {bool? status,
      String? message,
      int? user_id,
      String? user_name,
      String? token,
      String? token_type});
}

/// @nodoc
class _$ChangePasswordModelCopyWithImpl<$Res, $Val extends ChangePasswordModel>
    implements $ChangePasswordModelCopyWith<$Res> {
  _$ChangePasswordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? user_id = freezed,
    Object? user_name = freezed,
    Object? token = freezed,
    Object? token_type = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: freezed == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordModelImplCopyWith<$Res>
    implements $ChangePasswordModelCopyWith<$Res> {
  factory _$$ChangePasswordModelImplCopyWith(_$ChangePasswordModelImpl value,
          $Res Function(_$ChangePasswordModelImpl) then) =
      __$$ChangePasswordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      String? message,
      int? user_id,
      String? user_name,
      String? token,
      String? token_type});
}

/// @nodoc
class __$$ChangePasswordModelImplCopyWithImpl<$Res>
    extends _$ChangePasswordModelCopyWithImpl<$Res, _$ChangePasswordModelImpl>
    implements _$$ChangePasswordModelImplCopyWith<$Res> {
  __$$ChangePasswordModelImplCopyWithImpl(_$ChangePasswordModelImpl _value,
      $Res Function(_$ChangePasswordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? user_id = freezed,
    Object? user_name = freezed,
    Object? token = freezed,
    Object? token_type = freezed,
  }) {
    return _then(_$ChangePasswordModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_name: freezed == user_name
          ? _value.user_name
          : user_name // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      token_type: freezed == token_type
          ? _value.token_type
          : token_type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordModelImpl implements _ChangePasswordModel {
  const _$ChangePasswordModelImpl(
      {this.status,
      this.message,
      this.user_id,
      this.user_name,
      this.token,
      this.token_type});

  factory _$ChangePasswordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final String? message;
  @override
  final int? user_id;
  @override
  final String? user_name;
  @override
  final String? token;
  @override
  final String? token_type;

  @override
  String toString() {
    return 'ChangePasswordModel(status: $status, message: $message, user_id: $user_id, user_name: $user_name, token: $token, token_type: $token_type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.user_name, user_name) ||
                other.user_name == user_name) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.token_type, token_type) ||
                other.token_type == token_type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, user_id, user_name, token, token_type);

  /// Create a copy of ChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordModelImplCopyWith<_$ChangePasswordModelImpl> get copyWith =>
      __$$ChangePasswordModelImplCopyWithImpl<_$ChangePasswordModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordModelImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordModel implements ChangePasswordModel {
  const factory _ChangePasswordModel(
      {final bool? status,
      final String? message,
      final int? user_id,
      final String? user_name,
      final String? token,
      final String? token_type}) = _$ChangePasswordModelImpl;

  factory _ChangePasswordModel.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordModelImpl.fromJson;

  @override
  bool? get status;
  @override
  String? get message;
  @override
  int? get user_id;
  @override
  String? get user_name;
  @override
  String? get token;
  @override
  String? get token_type;

  /// Create a copy of ChangePasswordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordModelImplCopyWith<_$ChangePasswordModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
