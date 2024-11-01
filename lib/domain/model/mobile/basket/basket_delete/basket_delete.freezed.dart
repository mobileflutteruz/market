// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_delete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketDelete _$BasketDeleteFromJson(Map<String, dynamic> json) {
  return _BasketDelete.fromJson(json);
}

/// @nodoc
mixin _$BasketDelete {
  bool get status => throw _privateConstructorUsedError;
  Message get message => throw _privateConstructorUsedError;

  /// Serializes this BasketDelete to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketDeleteCopyWith<BasketDelete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketDeleteCopyWith<$Res> {
  factory $BasketDeleteCopyWith(
          BasketDelete value, $Res Function(BasketDelete) then) =
      _$BasketDeleteCopyWithImpl<$Res, BasketDelete>;
  @useResult
  $Res call({bool status, Message message});

  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class _$BasketDeleteCopyWithImpl<$Res, $Val extends BasketDelete>
    implements $BasketDeleteCopyWith<$Res> {
  _$BasketDeleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ) as $Val);
  }

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCopyWith<$Res> get message {
    return $MessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BasketDeleteImplCopyWith<$Res>
    implements $BasketDeleteCopyWith<$Res> {
  factory _$$BasketDeleteImplCopyWith(
          _$BasketDeleteImpl value, $Res Function(_$BasketDeleteImpl) then) =
      __$$BasketDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool status, Message message});

  @override
  $MessageCopyWith<$Res> get message;
}

/// @nodoc
class __$$BasketDeleteImplCopyWithImpl<$Res>
    extends _$BasketDeleteCopyWithImpl<$Res, _$BasketDeleteImpl>
    implements _$$BasketDeleteImplCopyWith<$Res> {
  __$$BasketDeleteImplCopyWithImpl(
      _$BasketDeleteImpl _value, $Res Function(_$BasketDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$BasketDeleteImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketDeleteImpl implements _BasketDelete {
  const _$BasketDeleteImpl({required this.status, required this.message});

  factory _$BasketDeleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketDeleteImplFromJson(json);

  @override
  final bool status;
  @override
  final Message message;

  @override
  String toString() {
    return 'BasketDelete(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketDeleteImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketDeleteImplCopyWith<_$BasketDeleteImpl> get copyWith =>
      __$$BasketDeleteImplCopyWithImpl<_$BasketDeleteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketDeleteImplToJson(
      this,
    );
  }
}

abstract class _BasketDelete implements BasketDelete {
  const factory _BasketDelete(
      {required final bool status,
      required final Message message}) = _$BasketDeleteImpl;

  factory _BasketDelete.fromJson(Map<String, dynamic> json) =
      _$BasketDeleteImpl.fromJson;

  @override
  bool get status;
  @override
  Message get message;

  /// Create a copy of BasketDelete
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketDeleteImplCopyWith<_$BasketDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  List<ProdId> get prod_id => throw _privateConstructorUsedError;

  /// Serializes this Message to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({List<ProdId> prod_id});
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod_id = null,
  }) {
    return _then(_value.copyWith(
      prod_id: null == prod_id
          ? _value.prod_id
          : prod_id // ignore: cast_nullable_to_non_nullable
              as List<ProdId>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl value, $Res Function(_$MessageImpl) then) =
      __$$MessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProdId> prod_id});
}

/// @nodoc
class __$$MessageImplCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$MessageImpl>
    implements _$$MessageImplCopyWith<$Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl _value, $Res Function(_$MessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prod_id = null,
  }) {
    return _then(_$MessageImpl(
      prod_id: null == prod_id
          ? _value._prod_id
          : prod_id // ignore: cast_nullable_to_non_nullable
              as List<ProdId>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl implements _Message {
  const _$MessageImpl({required final List<ProdId> prod_id})
      : _prod_id = prod_id;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  final List<ProdId> _prod_id;
  @override
  List<ProdId> get prod_id {
    if (_prod_id is EqualUnmodifiableListView) return _prod_id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prod_id);
  }

  @override
  String toString() {
    return 'Message(prod_id: $prod_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl &&
            const DeepCollectionEquality().equals(other._prod_id, _prod_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_prod_id));

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      __$$MessageImplCopyWithImpl<_$MessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message({required final List<ProdId> prod_id}) = _$MessageImpl;

  factory _Message.fromJson(Map<String, dynamic> json) = _$MessageImpl.fromJson;

  @override
  List<ProdId> get prod_id;

  /// Create a copy of Message
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageImplCopyWith<_$MessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProdId _$ProdIdFromJson(Map<String, dynamic> json) {
  return _ProdId.fromJson(json);
}

/// @nodoc
mixin _$ProdId {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this ProdId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProdId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProdIdCopyWith<ProdId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProdIdCopyWith<$Res> {
  factory $ProdIdCopyWith(ProdId value, $Res Function(ProdId) then) =
      _$ProdIdCopyWithImpl<$Res, ProdId>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ProdIdCopyWithImpl<$Res, $Val extends ProdId>
    implements $ProdIdCopyWith<$Res> {
  _$ProdIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProdId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProdIdImplCopyWith<$Res> implements $ProdIdCopyWith<$Res> {
  factory _$$ProdIdImplCopyWith(
          _$ProdIdImpl value, $Res Function(_$ProdIdImpl) then) =
      __$$ProdIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ProdIdImplCopyWithImpl<$Res>
    extends _$ProdIdCopyWithImpl<$Res, _$ProdIdImpl>
    implements _$$ProdIdImplCopyWith<$Res> {
  __$$ProdIdImplCopyWithImpl(
      _$ProdIdImpl _value, $Res Function(_$ProdIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProdId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ProdIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProdIdImpl implements _ProdId {
  const _$ProdIdImpl({required this.id});

  factory _$ProdIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProdIdImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ProdId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProdIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ProdId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProdIdImplCopyWith<_$ProdIdImpl> get copyWith =>
      __$$ProdIdImplCopyWithImpl<_$ProdIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProdIdImplToJson(
      this,
    );
  }
}

abstract class _ProdId implements ProdId {
  const factory _ProdId({required final int id}) = _$ProdIdImpl;

  factory _ProdId.fromJson(Map<String, dynamic> json) = _$ProdIdImpl.fromJson;

  @override
  int get id;

  /// Create a copy of ProdId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProdIdImplCopyWith<_$ProdIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
