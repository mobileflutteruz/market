// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureResponse _$FailureResponseFromJson(Map<String, dynamic> json) {
  return _FailureResponse.fromJson(json);
}

/// @nodoc
mixin _$FailureResponse {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: '0')
  Map<String, List<String>> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureResponseCopyWith<FailureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureResponseCopyWith<$Res> {
  factory $FailureResponseCopyWith(
          FailureResponse value, $Res Function(FailureResponse) then) =
      _$FailureResponseCopyWithImpl<$Res, FailureResponse>;
  @useResult
  $Res call(
      {bool status, @JsonKey(name: '0') Map<String, List<String>> errors});
}

/// @nodoc
class _$FailureResponseCopyWithImpl<$Res, $Val extends FailureResponse>
    implements $FailureResponseCopyWith<$Res> {
  _$FailureResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FailureResponseImplCopyWith<$Res>
    implements $FailureResponseCopyWith<$Res> {
  factory _$$FailureResponseImplCopyWith(_$FailureResponseImpl value,
          $Res Function(_$FailureResponseImpl) then) =
      __$$FailureResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status, @JsonKey(name: '0') Map<String, List<String>> errors});
}

/// @nodoc
class __$$FailureResponseImplCopyWithImpl<$Res>
    extends _$FailureResponseCopyWithImpl<$Res, _$FailureResponseImpl>
    implements _$$FailureResponseImplCopyWith<$Res> {
  __$$FailureResponseImplCopyWithImpl(
      _$FailureResponseImpl _value, $Res Function(_$FailureResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errors = null,
  }) {
    return _then(_$FailureResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureResponseImpl implements _FailureResponse {
  const _$FailureResponseImpl(
      {required this.status,
      @JsonKey(name: '0') required final Map<String, List<String>> errors})
      : _errors = errors;

  factory _$FailureResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureResponseImplFromJson(json);

  @override
  final bool status;
  final Map<String, List<String>> _errors;
  @override
  @JsonKey(name: '0')
  Map<String, List<String>> get errors {
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'FailureResponse(status: $status, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureResponseImplCopyWith<_$FailureResponseImpl> get copyWith =>
      __$$FailureResponseImplCopyWithImpl<_$FailureResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureResponseImplToJson(
      this,
    );
  }
}

abstract class _FailureResponse implements FailureResponse {
  const factory _FailureResponse(
      {required final bool status,
      @JsonKey(name: '0')
      required final Map<String, List<String>> errors}) = _$FailureResponseImpl;

  factory _FailureResponse.fromJson(Map<String, dynamic> json) =
      _$FailureResponseImpl.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: '0')
  Map<String, List<String>> get errors;
  @override
  @JsonKey(ignore: true)
  _$$FailureResponseImplCopyWith<_$FailureResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
