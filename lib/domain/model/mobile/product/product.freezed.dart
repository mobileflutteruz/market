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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, result);

  @JsonKey(ignore: true)
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
  @override
  @JsonKey(ignore: true)
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product,
      const DeepCollectionEquality().hash(_similar_products));

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
      {final Product? product,
      final List<SimilarProduct>? similar_products}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  Product? get product;
  @override
  List<SimilarProduct>? get similar_products;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  String? get name_uz => throw _privateConstructorUsedError;
  String? get name_ru => throw _privateConstructorUsedError;
  String? get name_en => throw _privateConstructorUsedError;
  String? get description_uz => throw _privateConstructorUsedError;
  String? get description_ru => throw _privateConstructorUsedError;
  String? get description_en => throw _privateConstructorUsedError;
  dynamic get details_of_product_uz => throw _privateConstructorUsedError;
  dynamic get details_of_product_ru => throw _privateConstructorUsedError;
  dynamic get details_of_product_en => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  dynamic get quantity_rest => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  int? get rest_products => throw _privateConstructorUsedError;
  int? get price_to_pay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      String? name_uz,
      String? name_ru,
      String? name_en,
      String? description_uz,
      String? description_ru,
      String? description_en,
      dynamic details_of_product_uz,
      dynamic details_of_product_ru,
      dynamic details_of_product_en,
      int? price,
      int? quantity,
      dynamic quantity_rest,
      int? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      DateTime? created_at,
      dynamic updated_at,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? description_uz = freezed,
    Object? description_ru = freezed,
    Object? description_en = freezed,
    Object? details_of_product_uz = freezed,
    Object? details_of_product_ru = freezed,
    Object? details_of_product_en = freezed,
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
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String?,
      description_uz: freezed == description_uz
          ? _value.description_uz
          : description_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      description_ru: freezed == description_ru
          ? _value.description_ru
          : description_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      description_en: freezed == description_en
          ? _value.description_en
          : description_en // ignore: cast_nullable_to_non_nullable
              as String?,
      details_of_product_uz: freezed == details_of_product_uz
          ? _value.details_of_product_uz
          : details_of_product_uz // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product_ru: freezed == details_of_product_ru
          ? _value.details_of_product_ru
          : details_of_product_ru // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product_en: freezed == details_of_product_en
          ? _value.details_of_product_en
          : details_of_product_en // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      String? name_uz,
      String? name_ru,
      String? name_en,
      String? description_uz,
      String? description_ru,
      String? description_en,
      dynamic details_of_product_uz,
      dynamic details_of_product_ru,
      dynamic details_of_product_en,
      int? price,
      int? quantity,
      dynamic quantity_rest,
      int? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      DateTime? created_at,
      dynamic updated_at,
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? description_uz = freezed,
    Object? description_ru = freezed,
    Object? description_en = freezed,
    Object? details_of_product_uz = freezed,
    Object? details_of_product_ru = freezed,
    Object? details_of_product_en = freezed,
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
      name_uz: freezed == name_uz
          ? _value.name_uz
          : name_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ru: freezed == name_ru
          ? _value.name_ru
          : name_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      name_en: freezed == name_en
          ? _value.name_en
          : name_en // ignore: cast_nullable_to_non_nullable
              as String?,
      description_uz: freezed == description_uz
          ? _value.description_uz
          : description_uz // ignore: cast_nullable_to_non_nullable
              as String?,
      description_ru: freezed == description_ru
          ? _value.description_ru
          : description_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      description_en: freezed == description_en
          ? _value.description_en
          : description_en // ignore: cast_nullable_to_non_nullable
              as String?,
      details_of_product_uz: freezed == details_of_product_uz
          ? _value.details_of_product_uz
          : details_of_product_uz // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product_ru: freezed == details_of_product_ru
          ? _value.details_of_product_ru
          : details_of_product_ru // ignore: cast_nullable_to_non_nullable
              as dynamic,
      details_of_product_en: freezed == details_of_product_en
          ? _value.details_of_product_en
          : details_of_product_en // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
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
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      this.name_uz,
      this.name_ru,
      this.name_en,
      this.description_uz,
      this.description_ru,
      this.description_en,
      this.details_of_product_uz,
      this.details_of_product_ru,
      this.details_of_product_en,
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
  final String? name_uz;
  @override
  final String? name_ru;
  @override
  final String? name_en;
  @override
  final String? description_uz;
  @override
  final String? description_ru;
  @override
  final String? description_en;
  @override
  final dynamic details_of_product_uz;
  @override
  final dynamic details_of_product_ru;
  @override
  final dynamic details_of_product_en;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final dynamic quantity_rest;
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
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  @override
  final int? rest_products;
  @override
  final int? price_to_pay;

  @override
  String toString() {
    return 'Product(id: $id, name_uz: $name_uz, name_ru: $name_ru, name_en: $name_en, description_uz: $description_uz, description_ru: $description_ru, description_en: $description_en, details_of_product_uz: $details_of_product_uz, details_of_product_ru: $details_of_product_ru, details_of_product_en: $details_of_product_en, price: $price, quantity: $quantity, quantity_rest: $quantity_rest, discount: $discount, image: $image, status: $status, product_type: $product_type, category_id: $category_id, created_at: $created_at, updated_at: $updated_at, rest_products: $rest_products, price_to_pay: $price_to_pay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_uz, name_uz) || other.name_uz == name_uz) &&
            (identical(other.name_ru, name_ru) || other.name_ru == name_ru) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.description_uz, description_uz) ||
                other.description_uz == description_uz) &&
            (identical(other.description_ru, description_ru) ||
                other.description_ru == description_ru) &&
            (identical(other.description_en, description_en) ||
                other.description_en == description_en) &&
            const DeepCollectionEquality()
                .equals(other.details_of_product_uz, details_of_product_uz) &&
            const DeepCollectionEquality()
                .equals(other.details_of_product_ru, details_of_product_ru) &&
            const DeepCollectionEquality()
                .equals(other.details_of_product_en, details_of_product_en) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality()
                .equals(other.quantity_rest, quantity_rest) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.product_type, product_type) ||
                other.product_type == product_type) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            (identical(other.rest_products, rest_products) ||
                other.rest_products == rest_products) &&
            (identical(other.price_to_pay, price_to_pay) ||
                other.price_to_pay == price_to_pay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name_uz,
        name_ru,
        name_en,
        description_uz,
        description_ru,
        description_en,
        const DeepCollectionEquality().hash(details_of_product_uz),
        const DeepCollectionEquality().hash(details_of_product_ru),
        const DeepCollectionEquality().hash(details_of_product_en),
        price,
        quantity,
        const DeepCollectionEquality().hash(quantity_rest),
        discount,
        image,
        status,
        product_type,
        category_id,
        created_at,
        const DeepCollectionEquality().hash(updated_at),
        rest_products,
        price_to_pay
      ]);

  @JsonKey(ignore: true)
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
      final String? name_uz,
      final String? name_ru,
      final String? name_en,
      final String? description_uz,
      final String? description_ru,
      final String? description_en,
      final dynamic details_of_product_uz,
      final dynamic details_of_product_ru,
      final dynamic details_of_product_en,
      final int? price,
      final int? quantity,
      final dynamic quantity_rest,
      final int? discount,
      final String? image,
      final String? status,
      final String? product_type,
      final int? category_id,
      final DateTime? created_at,
      final dynamic updated_at,
      final int? rest_products,
      final int? price_to_pay}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name_uz;
  @override
  String? get name_ru;
  @override
  String? get name_en;
  @override
  String? get description_uz;
  @override
  String? get description_ru;
  @override
  String? get description_en;
  @override
  dynamic get details_of_product_uz;
  @override
  dynamic get details_of_product_ru;
  @override
  dynamic get details_of_product_en;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  dynamic get quantity_rest;
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
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  int? get rest_products;
  @override
  int? get price_to_pay;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SimilarProduct _$SimilarProductFromJson(Map<String, dynamic> json) {
  return _SimilarProduct.fromJson(json);
}

/// @nodoc
mixin _$SimilarProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get nameUz => throw _privateConstructorUsedError;
  String? get nameRu => throw _privateConstructorUsedError;
  String? get nameEn => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get priceToPay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
      String? nameUz,
      String? nameRu,
      String? nameEn,
      String? status,
      int? discount,
      int? price,
      String? image,
      int? priceToPay});
}

/// @nodoc
class _$SimilarProductCopyWithImpl<$Res, $Val extends SimilarProduct>
    implements $SimilarProductCopyWith<$Res> {
  _$SimilarProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameRu = freezed,
    Object? nameEn = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? priceToPay = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
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
      priceToPay: freezed == priceToPay
          ? _value.priceToPay
          : priceToPay // ignore: cast_nullable_to_non_nullable
              as int?,
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
      String? nameUz,
      String? nameRu,
      String? nameEn,
      String? status,
      int? discount,
      int? price,
      String? image,
      int? priceToPay});
}

/// @nodoc
class __$$SimilarProductImplCopyWithImpl<$Res>
    extends _$SimilarProductCopyWithImpl<$Res, _$SimilarProductImpl>
    implements _$$SimilarProductImplCopyWith<$Res> {
  __$$SimilarProductImplCopyWithImpl(
      _$SimilarProductImpl _value, $Res Function(_$SimilarProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameUz = freezed,
    Object? nameRu = freezed,
    Object? nameEn = freezed,
    Object? status = freezed,
    Object? discount = freezed,
    Object? price = freezed,
    Object? image = freezed,
    Object? priceToPay = freezed,
  }) {
    return _then(_$SimilarProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nameUz: freezed == nameUz
          ? _value.nameUz
          : nameUz // ignore: cast_nullable_to_non_nullable
              as String?,
      nameRu: freezed == nameRu
          ? _value.nameRu
          : nameRu // ignore: cast_nullable_to_non_nullable
              as String?,
      nameEn: freezed == nameEn
          ? _value.nameEn
          : nameEn // ignore: cast_nullable_to_non_nullable
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
      priceToPay: freezed == priceToPay
          ? _value.priceToPay
          : priceToPay // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimilarProductImpl implements _SimilarProduct {
  const _$SimilarProductImpl(
      {this.id,
      this.nameUz,
      this.nameRu,
      this.nameEn,
      this.status,
      this.discount,
      this.price,
      this.image,
      this.priceToPay});

  factory _$SimilarProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimilarProductImplFromJson(json);

  @override
  final int? id;
  @override
  final String? nameUz;
  @override
  final String? nameRu;
  @override
  final String? nameEn;
  @override
  final String? status;
  @override
  final int? discount;
  @override
  final int? price;
  @override
  final String? image;
  @override
  final int? priceToPay;

  @override
  String toString() {
    return 'SimilarProduct(id: $id, nameUz: $nameUz, nameRu: $nameRu, nameEn: $nameEn, status: $status, discount: $discount, price: $price, image: $image, priceToPay: $priceToPay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimilarProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameUz, nameUz) || other.nameUz == nameUz) &&
            (identical(other.nameRu, nameRu) || other.nameRu == nameRu) &&
            (identical(other.nameEn, nameEn) || other.nameEn == nameEn) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.priceToPay, priceToPay) ||
                other.priceToPay == priceToPay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameUz, nameRu, nameEn,
      status, discount, price, image, priceToPay);

  @JsonKey(ignore: true)
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
      final String? nameUz,
      final String? nameRu,
      final String? nameEn,
      final String? status,
      final int? discount,
      final int? price,
      final String? image,
      final int? priceToPay}) = _$SimilarProductImpl;

  factory _SimilarProduct.fromJson(Map<String, dynamic> json) =
      _$SimilarProductImpl.fromJson;

  @override
  int? get id;
  @override
  String? get nameUz;
  @override
  String? get nameRu;
  @override
  String? get nameEn;
  @override
  String? get status;
  @override
  int? get discount;
  @override
  int? get price;
  @override
  String? get image;
  @override
  int? get priceToPay;
  @override
  @JsonKey(ignore: true)
  _$$SimilarProductImplCopyWith<_$SimilarProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
