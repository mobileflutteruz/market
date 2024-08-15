// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDataModel _$ProductDataModelFromJson(Map<String, dynamic> json) {
  return _ProductDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDataModel {
  bool? get status => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;

  /// Serializes this ProductDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataModelCopyWith<ProductDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataModelCopyWith<$Res> {
  factory $ProductDataModelCopyWith(
          ProductDataModel value, $Res Function(ProductDataModel) then) =
      _$ProductDataModelCopyWithImpl<$Res, ProductDataModel>;
  @useResult
  $Res call({bool? status, Result? result});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$ProductDataModelCopyWithImpl<$Res, $Val extends ProductDataModel>
    implements $ProductDataModelCopyWith<$Res> {
  _$ProductDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
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
              as Result?,
    ) as $Val);
  }

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDataModelImplCopyWith<$Res>
    implements $ProductDataModelCopyWith<$Res> {
  factory _$$ProductDataModelImplCopyWith(_$ProductDataModelImpl value,
          $Res Function(_$ProductDataModelImpl) then) =
      __$$ProductDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Result? result});

  @override
  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$ProductDataModelImplCopyWithImpl<$Res>
    extends _$ProductDataModelCopyWithImpl<$Res, _$ProductDataModelImpl>
    implements _$$ProductDataModelImplCopyWith<$Res> {
  __$$ProductDataModelImplCopyWithImpl(_$ProductDataModelImpl _value,
      $Res Function(_$ProductDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_$ProductDataModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataModelImpl implements _ProductDataModel {
  const _$ProductDataModelImpl({this.status, this.result});

  factory _$ProductDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final Result? result;

  @override
  String toString() {
    return 'ProductDataModel(status: $status, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, result);

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataModelImplCopyWith<_$ProductDataModelImpl> get copyWith =>
      __$$ProductDataModelImplCopyWithImpl<_$ProductDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDataModel implements ProductDataModel {
  const factory _ProductDataModel({final bool? status, final Result? result}) =
      _$ProductDataModelImpl;

  factory _ProductDataModel.fromJson(Map<String, dynamic> json) =
      _$ProductDataModelImpl.fromJson;

  @override
  bool? get status;
  @override
  Result? get result;

  /// Create a copy of ProductDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataModelImplCopyWith<_$ProductDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Product? get product => throw _privateConstructorUsedError;
  List<SimilarProduct>? get similar_products =>
      throw _privateConstructorUsedError;

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
  $Res call({Product? product, List<SimilarProduct>? similar_products});

  $ProductCopyWith<$Res>? get product;
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
    Object? product = freezed,
    Object? similar_products = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      similar_products: freezed == similar_products
          ? _value.similar_products
          : similar_products // ignore: cast_nullable_to_non_nullable
              as List<SimilarProduct>?,
    ) as $Val);
  }

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Product? product, List<SimilarProduct>? similar_products});

  @override
  $ProductCopyWith<$Res>? get product;
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
    Object? product = freezed,
    Object? similar_products = freezed,
  }) {
    return _then(_$ResultImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      similar_products: freezed == similar_products
          ? _value._similar_products
          : similar_products // ignore: cast_nullable_to_non_nullable
              as List<SimilarProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {this.product, final List<SimilarProduct>? similar_products})
      : _similar_products = similar_products;

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final Product? product;
  final List<SimilarProduct>? _similar_products;
  @override
  List<SimilarProduct>? get similar_products {
    final value = _similar_products;
    if (value == null) return null;
    if (_similar_products is EqualUnmodifiableListView)
      return _similar_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Result(product: $product, similar_products: $similar_products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._similar_products, _similar_products));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_similar_products));

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
      {final Product? product,
      final List<SimilarProduct>? similar_products}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Product? get product;
  @override
  List<SimilarProduct>? get similar_products;

  /// Create a copy of Result
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get description => throw _privateConstructorUsedError;
  dynamic get details_of_product => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get quantity_rest => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  dynamic get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  int? get rest_products => throw _privateConstructorUsedError;
  int? get price_to_pay => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      dynamic details_of_product,
      int? price,
      int? quantity,
      int? quantity_rest,
      int? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      dynamic created_at,
      DateTime? updated_at,
      int? rest_products,
      int? price_to_pay});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? details_of_product = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? quantity_rest = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? product_type = freezed,
    Object? category_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? rest_products = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product: freezed == details_of_product
          ? _value.details_of_product
          : details_of_product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_rest: freezed == quantity_rest
          ? _value.quantity_rest
          : quantity_rest // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      product_type: freezed == product_type
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rest_products: freezed == rest_products
          ? _value.rest_products
          : rest_products // ignore: cast_nullable_to_non_nullable
              as int?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic description,
      dynamic details_of_product,
      int? price,
      int? quantity,
      int? quantity_rest,
      int? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      dynamic created_at,
      DateTime? updated_at,
      int? rest_products,
      int? price_to_pay});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? details_of_product = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? quantity_rest = freezed,
    Object? discount = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? product_type = freezed,
    Object? category_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? rest_products = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product: freezed == details_of_product
          ? _value.details_of_product
          : details_of_product // ignore: cast_nullable_to_non_nullable
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity_rest: freezed == quantity_rest
          ? _value.quantity_rest
          : quantity_rest // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      product_type: freezed == product_type
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rest_products: freezed == rest_products
          ? _value.rest_products
          : rest_products // ignore: cast_nullable_to_non_nullable
              as int?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.id,
      this.name,
      this.description,
      this.details_of_product,
      this.price,
      this.quantity,
      this.quantity_rest,
      this.discount,
      this.image,
      this.status,
      this.product_type,
      this.category_id,
      this.created_at,
      this.updated_at,
      this.rest_products,
      this.price_to_pay});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic description;
  @override
  final dynamic details_of_product;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final int? quantity_rest;
  @override
  final int? discount;
  @override
  final String? image;
  @override
  final String? status;
  @override
  final String? product_type;
  @override
  final int? category_id;
  @override
  final dynamic created_at;
  @override
  final DateTime? updated_at;
  @override
  final int? rest_products;
  @override
  final int? price_to_pay;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, details_of_product: $details_of_product, price: $price, quantity: $quantity, quantity_rest: $quantity_rest, discount: $discount, image: $image, status: $status, product_type: $product_type, category_id: $category_id, created_at: $created_at, updated_at: $updated_at, rest_products: $rest_products, price_to_pay: $price_to_pay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.details_of_product, details_of_product) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantity_rest, quantity_rest) ||
                other.quantity_rest == quantity_rest) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product_type, product_type) ||
                other.product_type == product_type) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            const DeepCollectionEquality()
                .equals(other.created_at, created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.rest_products, rest_products) ||
                other.rest_products == rest_products) &&
            (identical(other.price_to_pay, price_to_pay) ||
                other.price_to_pay == price_to_pay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(details_of_product),
      price,
      quantity,
      quantity_rest,
      discount,
      image,
      status,
      product_type,
      category_id,
      const DeepCollectionEquality().hash(created_at),
      updated_at,
      rest_products,
      price_to_pay);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final int? id,
      final String? name,
      final dynamic description,
      final dynamic details_of_product,
      final int? price,
      final int? quantity,
      final int? quantity_rest,
      final int? discount,
      final String? image,
      final String? status,
      final String? product_type,
      final int? category_id,
      final dynamic created_at,
      final DateTime? updated_at,
      final int? rest_products,
      final int? price_to_pay}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get description;
  @override
  dynamic get details_of_product;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  int? get quantity_rest;
  @override
  int? get discount;
  @override
  String? get image;
  @override
  String? get status;
  @override
  String? get product_type;
  @override
  int? get category_id;
  @override
  dynamic get created_at;
  @override
  DateTime? get updated_at;
  @override
  int? get rest_products;
  @override
  int? get price_to_pay;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarProduct _$SimilarProductFromJson(Map<String, dynamic> json) {
  return _SimilarProduct.fromJson(json);
}

/// @nodoc
mixin _$SimilarProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  double? get price_to_pay => throw _privateConstructorUsedError;

  /// Serializes this SimilarProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimilarProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimilarProductCopyWith<SimilarProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimilarProductCopyWith<$Res> {
  factory $SimilarProductCopyWith(
          SimilarProduct value, $Res Function(SimilarProduct) then) =
      _$SimilarProductCopyWithImpl<$Res, SimilarProduct>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      int? discount,
      int? price,
      String? image,
      String? product_type,
      double? price_to_pay});
}

/// @nodoc
class _$SimilarProductCopyWithImpl<$Res, $Val extends SimilarProduct>
    implements $SimilarProductCopyWith<$Res> {
  _$SimilarProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimilarProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? product_type = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      product_type: freezed == product_type
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimilarProductImplCopyWith<$Res>
    implements $SimilarProductCopyWith<$Res> {
  factory _$$SimilarProductImplCopyWith(_$SimilarProductImpl value,
          $Res Function(_$SimilarProductImpl) then) =
      __$$SimilarProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? status,
      int? discount,
      int? price,
      String? image,
      String? product_type,
      double? price_to_pay});
}

/// @nodoc
class __$$SimilarProductImplCopyWithImpl<$Res>
    extends _$SimilarProductCopyWithImpl<$Res, _$SimilarProductImpl>
    implements _$$SimilarProductImplCopyWith<$Res> {
  __$$SimilarProductImplCopyWithImpl(
      _$SimilarProductImpl _value, $Res Function(_$SimilarProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimilarProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? product_type = freezed,
    Object? price_to_pay = freezed,
  }) {
    return _then(_$SimilarProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      product_type: freezed == product_type
          ? _value.product_type
          : product_type // ignore: cast_nullable_to_non_nullable
              as String?,
      price_to_pay: freezed == price_to_pay
          ? _value.price_to_pay
          : price_to_pay // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarProductImpl implements _SimilarProduct {
  const _$SimilarProductImpl(
      {this.id,
      this.name,
      this.status,
      this.discount,
      this.price,
      this.image,
      this.product_type,
      this.price_to_pay});

  factory _$SimilarProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarProductImplFromJson(json);

  @override
  final int? id;
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
  final String? product_type;
  @override
  final double? price_to_pay;

  @override
  String toString() {
    return 'SimilarProduct(id: $id, name: $name, status: $status, discount: $discount, price: $price, image: $image, product_type: $product_type, price_to_pay: $price_to_pay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.product_type, product_type) ||
                other.product_type == product_type) &&
            (identical(other.price_to_pay, price_to_pay) ||
                other.price_to_pay == price_to_pay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, discount,
      price, image, product_type, price_to_pay);

  /// Create a copy of SimilarProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimilarProductImplCopyWith<_$SimilarProductImpl> get copyWith =>
      __$$SimilarProductImplCopyWithImpl<_$SimilarProductImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimilarProductImplToJson(
      this,
    );
  }
}

abstract class _SimilarProduct implements SimilarProduct {
  const factory _SimilarProduct(
      {final int? id,
      final String? name,
      final String? status,
      final int? discount,
      final int? price,
      final String? image,
      final String? product_type,
      final double? price_to_pay}) = _$SimilarProductImpl;

  factory _SimilarProduct.fromJson(Map<String, dynamic> json) =
      _$SimilarProductImpl.fromJson;

  @override
  int? get id;
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
  String? get product_type;
  @override
  double? get price_to_pay;

  /// Create a copy of SimilarProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimilarProductImplCopyWith<_$SimilarProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
