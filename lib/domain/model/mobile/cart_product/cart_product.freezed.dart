// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) {
  return _CartProductModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductModel {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get name_uz => throw _privateConstructorUsedError;
  String? get name_ru => throw _privateConstructorUsedError;
  String? get name_en => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  dynamic get updated_at => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
          CartProductModel value, $Res Function(CartProductModel) then) =
      _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? name_uz,
      String? name_ru,
      String? name_en,
      DateTime? created_at,
      dynamic updated_at,
      List<Product>? products});
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartProductModelImplCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$CartProductModelImplCopyWith(_$CartProductModelImpl value,
          $Res Function(_$CartProductModelImpl) then) =
      __$$CartProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? name_uz,
      String? name_ru,
      String? name_en,
      DateTime? created_at,
      dynamic updated_at,
      List<Product>? products});
}

/// @nodoc
class __$$CartProductModelImplCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$CartProductModelImpl>
    implements _$$CartProductModelImplCopyWith<$Res> {
  __$$CartProductModelImplCopyWithImpl(_$CartProductModelImpl _value,
      $Res Function(_$CartProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? name_uz = freezed,
    Object? name_ru = freezed,
    Object? name_en = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? products = freezed,
  }) {
    return _then(_$CartProductModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
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
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as dynamic,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductModelImpl implements _CartProductModel {
  const _$CartProductModelImpl(
      {this.id,
      this.image,
      this.name_uz,
      this.name_ru,
      this.name_en,
      this.created_at,
      this.updated_at,
      final List<Product>? products})
      : _products = products;

  factory _$CartProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? name_uz;
  @override
  final String? name_ru;
  @override
  final String? name_en;
  @override
  final DateTime? created_at;
  @override
  final dynamic updated_at;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CartProductModel(id: $id, image: $image, name_uz: $name_uz, name_ru: $name_ru, name_en: $name_en, created_at: $created_at, updated_at: $updated_at, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name_uz, name_uz) || other.name_uz == name_uz) &&
            (identical(other.name_ru, name_ru) || other.name_ru == name_ru) &&
            (identical(other.name_en, name_en) || other.name_en == name_en) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other.updated_at, updated_at) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      name_uz,
      name_ru,
      name_en,
      created_at,
      const DeepCollectionEquality().hash(updated_at),
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      __$$CartProductModelImplCopyWithImpl<_$CartProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductModelImplToJson(
      this,
    );
  }
}

abstract class _CartProductModel implements CartProductModel {
  const factory _CartProductModel(
      {final int? id,
      final String? image,
      final String? name_uz,
      final String? name_ru,
      final String? name_en,
      final DateTime? created_at,
      final dynamic updated_at,
      final List<Product>? products}) = _$CartProductModelImpl;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$CartProductModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get name_uz;
  @override
  String? get name_ru;
  @override
  String? get name_en;
  @override
  DateTime? get created_at;
  @override
  dynamic get updated_at;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
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
  String? get details_of_product_uz => throw _privateConstructorUsedError;
  String? get details_of_product_ru => throw _privateConstructorUsedError;
  String? get details_of_product_en => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  dynamic get quantity_rest => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;

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
      String? details_of_product_uz,
      String? details_of_product_ru,
      String? details_of_product_en,
      int? price,
      int? quantity,
      dynamic quantity_rest,
      double? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      DateTime? created_at,
      DateTime? updated_at});
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
              as String?,
      details_of_product_ru: freezed == details_of_product_ru
          ? _value.details_of_product_ru
          : details_of_product_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      details_of_product_en: freezed == details_of_product_en
          ? _value.details_of_product_en
          : details_of_product_en // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as double?,
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
              as DateTime?,
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
      String? details_of_product_uz,
      String? details_of_product_ru,
      String? details_of_product_en,
      int? price,
      int? quantity,
      dynamic quantity_rest,
      double? discount,
      String? image,
      String? status,
      String? product_type,
      int? category_id,
      DateTime? created_at,
      DateTime? updated_at});
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
              as String?,
      details_of_product_ru: freezed == details_of_product_ru
          ? _value.details_of_product_ru
          : details_of_product_ru // ignore: cast_nullable_to_non_nullable
              as String?,
      details_of_product_en: freezed == details_of_product_en
          ? _value.details_of_product_en
          : details_of_product_en // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as double?,
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
              as DateTime?,
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
      this.updated_at});

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
  final String? details_of_product_uz;
  @override
  final String? details_of_product_ru;
  @override
  final String? details_of_product_en;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final dynamic quantity_rest;
  @override
  final double? discount;
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
  final DateTime? updated_at;

  @override
  String toString() {
    return 'Product(id: $id, name_uz: $name_uz, name_ru: $name_ru, name_en: $name_en, description_uz: $description_uz, description_ru: $description_ru, description_en: $description_en, details_of_product_uz: $details_of_product_uz, details_of_product_ru: $details_of_product_ru, details_of_product_en: $details_of_product_en, price: $price, quantity: $quantity, quantity_rest: $quantity_rest, discount: $discount, image: $image, status: $status, product_type: $product_type, category_id: $category_id, created_at: $created_at, updated_at: $updated_at)';
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
            (identical(other.details_of_product_uz, details_of_product_uz) ||
                other.details_of_product_uz == details_of_product_uz) &&
            (identical(other.details_of_product_ru, details_of_product_ru) ||
                other.details_of_product_ru == details_of_product_ru) &&
            (identical(other.details_of_product_en, details_of_product_en) ||
                other.details_of_product_en == details_of_product_en) &&
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
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
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
        details_of_product_uz,
        details_of_product_ru,
        details_of_product_en,
        price,
        quantity,
        const DeepCollectionEquality().hash(quantity_rest),
        discount,
        image,
        status,
        product_type,
        category_id,
        created_at,
        updated_at
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
      final String? details_of_product_uz,
      final String? details_of_product_ru,
      final String? details_of_product_en,
      final int? price,
      final int? quantity,
      final dynamic quantity_rest,
      final double? discount,
      final String? image,
      final String? status,
      final String? product_type,
      final int? category_id,
      final DateTime? created_at,
      final DateTime? updated_at}) = _$ProductImpl;

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
  String? get details_of_product_uz;
  @override
  String? get details_of_product_ru;
  @override
  String? get details_of_product_en;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  dynamic get quantity_rest;
  @override
  double? get discount;
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
  DateTime? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
