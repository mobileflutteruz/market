// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Favourite _$FavouriteFromJson(Map<String, dynamic> json) {
  return _Favourite.fromJson(json);
}

/// @nodoc
mixin _$Favourite {
  bool? get status => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavouriteCopyWith<Favourite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteCopyWith<$Res> {
  factory $FavouriteCopyWith(Favourite value, $Res Function(Favourite) then) =
      _$FavouriteCopyWithImpl<$Res, Favourite>;
  @useResult
  $Res call({bool? status, List<Result>? result});
}

/// @nodoc
class _$FavouriteCopyWithImpl<$Res, $Val extends Favourite>
    implements $FavouriteCopyWith<$Res> {
  _$FavouriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteImplCopyWith<$Res>
    implements $FavouriteCopyWith<$Res> {
  factory _$$FavouriteImplCopyWith(
          _$FavouriteImpl value, $Res Function(_$FavouriteImpl) then) =
      __$$FavouriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<Result>? result});
}

/// @nodoc
class __$$FavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteCopyWithImpl<$Res, _$FavouriteImpl>
    implements _$$FavouriteImplCopyWith<$Res> {
  __$$FavouriteImplCopyWithImpl(
      _$FavouriteImpl _value, $Res Function(_$FavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_$FavouriteImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavouriteImpl implements _Favourite {
  const _$FavouriteImpl({this.status, final List<Result>? result})
      : _result = result;

  factory _$FavouriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavouriteImplFromJson(json);

  @override
  final bool? status;
  final List<Result>? _result;
  @override
  List<Result>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Favourite(status: $status, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      __$$FavouriteImplCopyWithImpl<_$FavouriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavouriteImplToJson(
      this,
    );
  }
}

abstract class _Favourite implements Favourite {
  const factory _Favourite({final bool? status, final List<Result>? result}) =
      _$FavouriteImpl;

  factory _Favourite.fromJson(Map<String, dynamic> json) =
      _$FavouriteImpl.fromJson;

  @override
  bool? get status;
  @override
  List<Result>? get result;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteImplCopyWith<_$FavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  int? get id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get price_to_pay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      String? name,
      String? status,
      int? discount,
      int? price,
      String? image,
      int? price_to_pay});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      String? name,
      String? status,
      int? discount,
      int? price,
      String? image,
      int? price_to_pay});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_$ResultImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.id,
      this.product_id,
      this.name,
      this.status,
      this.discount,
      this.price,
      this.image,
      this.price_to_pay});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  @override
  final int? product_id;
  @override
  final String? name;
  @override
  final String? status;
  @override
  final int? discount;
  @override
  final int? price;
  @override
  final String? image;
  @override
  final int? price_to_pay;

  @override
  String toString() {
    return 'Result(id: $id, product_id: $product_id, name: $name, status: $status, discount: $discount, price: $price, image: $image, price_to_pay: $price_to_pay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price_to_pay, price_to_pay) ||
                other.price_to_pay == price_to_pay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product_id, name, status,
      discount, price, image, price_to_pay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final int? id,
      final int? product_id,
      final String? name,
      final String? status,
      final int? discount,
      final int? price,
      final String? image,
      final int? price_to_pay}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  int? get product_id;
  @override
  String? get name;
  @override
  String? get status;
  @override
  int? get discount;
  @override
  int? get price;
  @override
  String? get image;
  @override
  int? get price_to_pay;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
