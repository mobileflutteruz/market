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

CartResponse _$CartResponseFromJson(Map<String, dynamic> json) {
  return _CartResponse.fromJson(json);
}

/// @nodoc
mixin _$CartResponse {
  bool? get status => throw _privateConstructorUsedError;
  List<ProductData>? get result => throw _privateConstructorUsedError;
  double? get total_payment => throw _privateConstructorUsedError;
  int? get total_quantity => throw _privateConstructorUsedError;

  /// Serializes this CartResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartResponseCopyWith<CartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartResponseCopyWith<$Res> {
  factory $CartResponseCopyWith(
          CartResponse value, $Res Function(CartResponse) then) =
      _$CartResponseCopyWithImpl<$Res, CartResponse>;
  @useResult
  $Res call(
      {bool? status,
      List<ProductData>? result,
      double? total_payment,
      int? total_quantity});
}

/// @nodoc
class _$CartResponseCopyWithImpl<$Res, $Val extends CartResponse>
    implements $CartResponseCopyWith<$Res> {
  _$CartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartResponse
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
              as List<ProductData>?,
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
abstract class _$$CartResponseImplCopyWith<$Res>
    implements $CartResponseCopyWith<$Res> {
  factory _$$CartResponseImplCopyWith(
          _$CartResponseImpl value, $Res Function(_$CartResponseImpl) then) =
      __$$CartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      List<ProductData>? result,
      double? total_payment,
      int? total_quantity});
}

/// @nodoc
class __$$CartResponseImplCopyWithImpl<$Res>
    extends _$CartResponseCopyWithImpl<$Res, _$CartResponseImpl>
    implements _$$CartResponseImplCopyWith<$Res> {
  __$$CartResponseImplCopyWithImpl(
      _$CartResponseImpl _value, $Res Function(_$CartResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
    Object? total_payment = freezed,
    Object? total_quantity = freezed,
  }) {
    return _then(_$CartResponseImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
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
class _$CartResponseImpl implements _CartResponse {
  const _$CartResponseImpl(
      {this.status,
      final List<ProductData>? result,
      this.total_payment,
      this.total_quantity})
      : _result = result;

  factory _$CartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartResponseImplFromJson(json);

  @override
  final bool? status;
  final List<ProductData>? _result;
  @override
  List<ProductData>? get result {
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
    return 'CartResponse(status: $status, result: $result, total_payment: $total_payment, total_quantity: $total_quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartResponseImpl &&
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

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      __$$CartResponseImplCopyWithImpl<_$CartResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartResponseImplToJson(
      this,
    );
  }
}

abstract class _CartResponse implements CartResponse {
  const factory _CartResponse(
      {final bool? status,
      final List<ProductData>? result,
      final double? total_payment,
      final int? total_quantity}) = _$CartResponseImpl;

  factory _CartResponse.fromJson(Map<String, dynamic> json) =
      _$CartResponseImpl.fromJson;

  @override
  bool? get status;
  @override
  List<ProductData>? get result;
  @override
  double? get total_payment;
  @override
  int? get total_quantity;

  /// Create a copy of CartResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartResponseImplCopyWith<_$CartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  int? get id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get main_price => throw _privateConstructorUsedError;
  int? get click_quantity => throw _privateConstructorUsedError;
  int? get warehouse_product_quantity => throw _privateConstructorUsedError;
  double? get price_to_pay => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
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
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductData
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
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
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
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductData
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
    return _then(_$ProductDataImpl(
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
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {this.id,
      this.product_id,
      this.name,
      this.discount,
      this.main_price,
      this.click_quantity,
      this.warehouse_product_quantity,
      this.price_to_pay,
      this.image});

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

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
    return 'ProductData(id: $id, product_id: $product_id, name: $name, discount: $discount, main_price: $main_price, click_quantity: $click_quantity, warehouse_product_quantity: $warehouse_product_quantity, price_to_pay: $price_to_pay, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
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

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {final int? id,
      final int? product_id,
      final String? name,
      final int? discount,
      final int? main_price,
      final int? click_quantity,
      final int? warehouse_product_quantity,
      final double? price_to_pay,
      final String? image}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

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

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
