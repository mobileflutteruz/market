// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basket_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasketProducts _$BasketProductsFromJson(Map<String, dynamic> json) {
  return _BasketProducts.fromJson(json);
}

/// @nodoc
mixin _$BasketProducts {
  bool? get status => throw _privateConstructorUsedError;
  List<Result>? get result => throw _privateConstructorUsedError;
  double? get total_payment => throw _privateConstructorUsedError;
  int? get total_quantity => throw _privateConstructorUsedError;

  /// Serializes this BasketProducts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BasketProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BasketProductsCopyWith<BasketProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasketProductsCopyWith<$Res> {
  factory $BasketProductsCopyWith(
          BasketProducts value, $Res Function(BasketProducts) then) =
      _$BasketProductsCopyWithImpl<$Res, BasketProducts>;
  @useResult
  $Res call(
      {bool? status,
      List<Result>? result,
      double? total_payment,
      int? total_quantity});
}

/// @nodoc
class _$BasketProductsCopyWithImpl<$Res, $Val extends BasketProducts>
    implements $BasketProductsCopyWith<$Res> {
  _$BasketProductsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BasketProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? total_payment = freezed,
    Object? total_quantity = freezed,
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
      total_payment: freezed == total_payment
          ? _value.total_payment
          : total_payment // ignore: cast_nullable_to_non_nullable
              as double?,
      total_quantity: freezed == total_quantity
          ? _value.total_quantity
          : total_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasketProductsImplCopyWith<$Res>
    implements $BasketProductsCopyWith<$Res> {
  factory _$$BasketProductsImplCopyWith(_$BasketProductsImpl value,
          $Res Function(_$BasketProductsImpl) then) =
      __$$BasketProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      List<Result>? result,
      double? total_payment,
      int? total_quantity});
}

/// @nodoc
class __$$BasketProductsImplCopyWithImpl<$Res>
    extends _$BasketProductsCopyWithImpl<$Res, _$BasketProductsImpl>
    implements _$$BasketProductsImplCopyWith<$Res> {
  __$$BasketProductsImplCopyWithImpl(
      _$BasketProductsImpl _value, $Res Function(_$BasketProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BasketProducts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? total_payment = freezed,
    Object? total_quantity = freezed,
  }) {
    return _then(_$BasketProductsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      total_payment: freezed == total_payment
          ? _value.total_payment
          : total_payment // ignore: cast_nullable_to_non_nullable
              as double?,
      total_quantity: freezed == total_quantity
          ? _value.total_quantity
          : total_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasketProductsImpl implements _BasketProducts {
  const _$BasketProductsImpl(
      {this.status,
      final List<Result>? result,
      this.total_payment,
      this.total_quantity})
      : _result = result;

  factory _$BasketProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasketProductsImplFromJson(json);

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
  final double? total_payment;
  @override
  final int? total_quantity;

  @override
  String toString() {
    return 'BasketProducts(status: $status, result: $result, total_payment: $total_payment, total_quantity: $total_quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasketProductsImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.total_payment, total_payment) ||
                other.total_payment == total_payment) &&
            (identical(other.total_quantity, total_quantity) ||
                other.total_quantity == total_quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_result),
      total_payment,
      total_quantity);

  /// Create a copy of BasketProducts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BasketProductsImplCopyWith<_$BasketProductsImpl> get copyWith =>
      __$$BasketProductsImplCopyWithImpl<_$BasketProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasketProductsImplToJson(
      this,
    );
  }
}

abstract class _BasketProducts implements BasketProducts {
  const factory _BasketProducts(
      {final bool? status,
      final List<Result>? result,
      final double? total_payment,
      final int? total_quantity}) = _$BasketProductsImpl;

  factory _BasketProducts.fromJson(Map<String, dynamic> json) =
      _$BasketProductsImpl.fromJson;

  @override
  bool? get status;
  @override
  List<Result>? get result;
  @override
  double? get total_payment;
  @override
  int? get total_quantity;

  /// Create a copy of BasketProducts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BasketProductsImplCopyWith<_$BasketProductsImpl> get copyWith =>
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
  int? get discount => throw _privateConstructorUsedError;
  int? get main_price => throw _privateConstructorUsedError;
  int? get click_quantity => throw _privateConstructorUsedError;
  int? get warehouse_product_quantity => throw _privateConstructorUsedError;
  double? get price_to_pay => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this Result to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      int? discount,
      int? main_price,
      int? click_quantity,
      int? warehouse_product_quantity,
      double? price_to_pay,
      String? image});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? discount = freezed,
    Object? main_price = freezed,
    Object? click_quantity = freezed,
    Object? warehouse_product_quantity = freezed,
    Object? price_to_pay = freezed,
    Object? image = freezed,
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      main_price: freezed == main_price
          ? _value.main_price
          : main_price // ignore: cast_nullable_to_non_nullable
              as int?,
      click_quantity: freezed == click_quantity
          ? _value.click_quantity
          : click_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_product_quantity: freezed == warehouse_product_quantity
          ? _value.warehouse_product_quantity
          : warehouse_product_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      int? discount,
      int? main_price,
      int? click_quantity,
      int? warehouse_product_quantity,
      double? price_to_pay,
      String? image});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? name = freezed,
    Object? discount = freezed,
    Object? main_price = freezed,
    Object? click_quantity = freezed,
    Object? warehouse_product_quantity = freezed,
    Object? price_to_pay = freezed,
    Object? image = freezed,
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
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      main_price: freezed == main_price
          ? _value.main_price
          : main_price // ignore: cast_nullable_to_non_nullable
              as int?,
      click_quantity: freezed == click_quantity
          ? _value.click_quantity
          : click_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      warehouse_product_quantity: freezed == warehouse_product_quantity
          ? _value.warehouse_product_quantity
          : warehouse_product_quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.discount,
      this.main_price,
      this.click_quantity,
      this.warehouse_product_quantity,
      this.price_to_pay,
      this.image});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final int? id;
  @override
  final int? product_id;
  @override
  final String? name;
  @override
  final int? discount;
  @override
  final int? main_price;
  @override
  final int? click_quantity;
  @override
  final int? warehouse_product_quantity;
  @override
  final double? price_to_pay;
  @override
  final String? image;

  @override
  String toString() {
    return 'Result(id: $id, product_id: $product_id, name: $name, discount: $discount, main_price: $main_price, click_quantity: $click_quantity, warehouse_product_quantity: $warehouse_product_quantity, price_to_pay: $price_to_pay, image: $image)';
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
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.main_price, main_price) ||
                other.main_price == main_price) &&
            (identical(other.click_quantity, click_quantity) ||
                other.click_quantity == click_quantity) &&
            (identical(other.warehouse_product_quantity,
                    warehouse_product_quantity) ||
                other.warehouse_product_quantity ==
                    warehouse_product_quantity) &&
            (identical(other.price_to_pay, price_to_pay) ||
                other.price_to_pay == price_to_pay) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      product_id,
      name,
      discount,
      main_price,
      click_quantity,
      warehouse_product_quantity,
      price_to_pay,
      image);

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      final int? discount,
      final int? main_price,
      final int? click_quantity,
      final int? warehouse_product_quantity,
      final double? price_to_pay,
      final String? image}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  int? get id;
  @override
  int? get product_id;
  @override
  String? get name;
  @override
  int? get discount;
  @override
  int? get main_price;
  @override
  int? get click_quantity;
  @override
  int? get warehouse_product_quantity;
  @override
  double? get price_to_pay;
  @override
  String? get image;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
