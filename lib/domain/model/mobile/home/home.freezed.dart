// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MobileHomeProducts _$MobileHomeProductsFromJson(Map<String, dynamic> json) {
  return _MobileHomeProducts.fromJson(json);
}

/// @nodoc
mixin _$MobileHomeProducts {
  bool? get status => throw _privateConstructorUsedError;
  MobileHomeData? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileHomeProductsCopyWith<MobileHomeProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileHomeProductsCopyWith<$Res> {
  factory $MobileHomeProductsCopyWith(
          MobileHomeProducts value, $Res Function(MobileHomeProducts) then) =
      _$MobileHomeProductsCopyWithImpl<$Res, MobileHomeProducts>;
  @useResult
  $Res call({bool? status, MobileHomeData? result});

  $MobileHomeDataCopyWith<$Res>? get result;
}

/// @nodoc
class _$MobileHomeProductsCopyWithImpl<$Res, $Val extends MobileHomeProducts>
    implements $MobileHomeProductsCopyWith<$Res> {
  _$MobileHomeProductsCopyWithImpl(this._value, this._then);

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
              as MobileHomeData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MobileHomeDataCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $MobileHomeDataCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MobileHomeProductsImplCopyWith<$Res>
    implements $MobileHomeProductsCopyWith<$Res> {
  factory _$$MobileHomeProductsImplCopyWith(_$MobileHomeProductsImpl value,
          $Res Function(_$MobileHomeProductsImpl) then) =
      __$$MobileHomeProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, MobileHomeData? result});

  @override
  $MobileHomeDataCopyWith<$Res>? get result;
}

/// @nodoc
class __$$MobileHomeProductsImplCopyWithImpl<$Res>
    extends _$MobileHomeProductsCopyWithImpl<$Res, _$MobileHomeProductsImpl>
    implements _$$MobileHomeProductsImplCopyWith<$Res> {
  __$$MobileHomeProductsImplCopyWithImpl(_$MobileHomeProductsImpl _value,
      $Res Function(_$MobileHomeProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? result = freezed,
  }) {
    return _then(_$MobileHomeProductsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as MobileHomeData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileHomeProductsImpl implements _MobileHomeProducts {
  const _$MobileHomeProductsImpl({this.status, this.result});

  factory _$MobileHomeProductsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileHomeProductsImplFromJson(json);

  @override
  final bool? status;
  @override
  final MobileHomeData? result;

  @override
  String toString() {
    return 'MobileHomeProducts(status: $status, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileHomeProductsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileHomeProductsImplCopyWith<_$MobileHomeProductsImpl> get copyWith =>
      __$$MobileHomeProductsImplCopyWithImpl<_$MobileHomeProductsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileHomeProductsImplToJson(
      this,
    );
  }
}

abstract class _MobileHomeProducts implements MobileHomeProducts {
  const factory _MobileHomeProducts(
      {final bool? status,
      final MobileHomeData? result}) = _$MobileHomeProductsImpl;

  factory _MobileHomeProducts.fromJson(Map<String, dynamic> json) =
      _$MobileHomeProductsImpl.fromJson;

  @override
  bool? get status;
  @override
  MobileHomeData? get result;
  @override
  @JsonKey(ignore: true)
  _$$MobileHomeProductsImplCopyWith<_$MobileHomeProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileHomeData _$MobileHomeDataFromJson(Map<String, dynamic> json) {
  return _MobileHomeData.fromJson(json);
}

/// @nodoc
mixin _$MobileHomeData {
  List<HomeBanner>? get top_banner => throw _privateConstructorUsedError;
  List<TopProduct>? get top_product => throw _privateConstructorUsedError;
  List<HomeBanner>? get bottom_banner => throw _privateConstructorUsedError;
  List<TopProduct>? get bottom_product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileHomeDataCopyWith<MobileHomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileHomeDataCopyWith<$Res> {
  factory $MobileHomeDataCopyWith(
          MobileHomeData value, $Res Function(MobileHomeData) then) =
      _$MobileHomeDataCopyWithImpl<$Res, MobileHomeData>;
  @useResult
  $Res call(
      {List<HomeBanner>? top_banner,
      List<TopProduct>? top_product,
      List<HomeBanner>? bottom_banner,
      List<TopProduct>? bottom_product});
}

/// @nodoc
class _$MobileHomeDataCopyWithImpl<$Res, $Val extends MobileHomeData>
    implements $MobileHomeDataCopyWith<$Res> {
  _$MobileHomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_banner = freezed,
    Object? top_product = freezed,
    Object? bottom_banner = freezed,
    Object? bottom_product = freezed,
  }) {
    return _then(_value.copyWith(
      top_banner: freezed == top_banner
          ? _value.top_banner
          : top_banner // ignore: cast_nullable_to_non_nullable
              as List<HomeBanner>?,
      top_product: freezed == top_product
          ? _value.top_product
          : top_product // ignore: cast_nullable_to_non_nullable
              as List<TopProduct>?,
      bottom_banner: freezed == bottom_banner
          ? _value.bottom_banner
          : bottom_banner // ignore: cast_nullable_to_non_nullable
              as List<HomeBanner>?,
      bottom_product: freezed == bottom_product
          ? _value.bottom_product
          : bottom_product // ignore: cast_nullable_to_non_nullable
              as List<TopProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileHomeDataImplCopyWith<$Res>
    implements $MobileHomeDataCopyWith<$Res> {
  factory _$$MobileHomeDataImplCopyWith(_$MobileHomeDataImpl value,
          $Res Function(_$MobileHomeDataImpl) then) =
      __$$MobileHomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeBanner>? top_banner,
      List<TopProduct>? top_product,
      List<HomeBanner>? bottom_banner,
      List<TopProduct>? bottom_product});
}

/// @nodoc
class __$$MobileHomeDataImplCopyWithImpl<$Res>
    extends _$MobileHomeDataCopyWithImpl<$Res, _$MobileHomeDataImpl>
    implements _$$MobileHomeDataImplCopyWith<$Res> {
  __$$MobileHomeDataImplCopyWithImpl(
      _$MobileHomeDataImpl _value, $Res Function(_$MobileHomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_banner = freezed,
    Object? top_product = freezed,
    Object? bottom_banner = freezed,
    Object? bottom_product = freezed,
  }) {
    return _then(_$MobileHomeDataImpl(
      top_banner: freezed == top_banner
          ? _value._top_banner
          : top_banner // ignore: cast_nullable_to_non_nullable
              as List<HomeBanner>?,
      top_product: freezed == top_product
          ? _value._top_product
          : top_product // ignore: cast_nullable_to_non_nullable
              as List<TopProduct>?,
      bottom_banner: freezed == bottom_banner
          ? _value._bottom_banner
          : bottom_banner // ignore: cast_nullable_to_non_nullable
              as List<HomeBanner>?,
      bottom_product: freezed == bottom_product
          ? _value._bottom_product
          : bottom_product // ignore: cast_nullable_to_non_nullable
              as List<TopProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileHomeDataImpl implements _MobileHomeData {
  const _$MobileHomeDataImpl(
      {final List<HomeBanner>? top_banner,
      final List<TopProduct>? top_product,
      final List<HomeBanner>? bottom_banner,
      final List<TopProduct>? bottom_product})
      : _top_banner = top_banner,
        _top_product = top_product,
        _bottom_banner = bottom_banner,
        _bottom_product = bottom_product;

  factory _$MobileHomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileHomeDataImplFromJson(json);

  final List<HomeBanner>? _top_banner;
  @override
  List<HomeBanner>? get top_banner {
    final value = _top_banner;
    if (value == null) return null;
    if (_top_banner is EqualUnmodifiableListView) return _top_banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopProduct>? _top_product;
  @override
  List<TopProduct>? get top_product {
    final value = _top_product;
    if (value == null) return null;
    if (_top_product is EqualUnmodifiableListView) return _top_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HomeBanner>? _bottom_banner;
  @override
  List<HomeBanner>? get bottom_banner {
    final value = _bottom_banner;
    if (value == null) return null;
    if (_bottom_banner is EqualUnmodifiableListView) return _bottom_banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopProduct>? _bottom_product;
  @override
  List<TopProduct>? get bottom_product {
    final value = _bottom_product;
    if (value == null) return null;
    if (_bottom_product is EqualUnmodifiableListView) return _bottom_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MobileHomeData(top_banner: $top_banner, top_product: $top_product, bottom_banner: $bottom_banner, bottom_product: $bottom_product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileHomeDataImpl &&
            const DeepCollectionEquality()
                .equals(other._top_banner, _top_banner) &&
            const DeepCollectionEquality()
                .equals(other._top_product, _top_product) &&
            const DeepCollectionEquality()
                .equals(other._bottom_banner, _bottom_banner) &&
            const DeepCollectionEquality()
                .equals(other._bottom_product, _bottom_product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_top_banner),
      const DeepCollectionEquality().hash(_top_product),
      const DeepCollectionEquality().hash(_bottom_banner),
      const DeepCollectionEquality().hash(_bottom_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileHomeDataImplCopyWith<_$MobileHomeDataImpl> get copyWith =>
      __$$MobileHomeDataImplCopyWithImpl<_$MobileHomeDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileHomeDataImplToJson(
      this,
    );
  }
}

abstract class _MobileHomeData implements MobileHomeData {
  const factory _MobileHomeData(
      {final List<HomeBanner>? top_banner,
      final List<TopProduct>? top_product,
      final List<HomeBanner>? bottom_banner,
      final List<TopProduct>? bottom_product}) = _$MobileHomeDataImpl;

  factory _MobileHomeData.fromJson(Map<String, dynamic> json) =
      _$MobileHomeDataImpl.fromJson;

  @override
  List<HomeBanner>? get top_banner;
  @override
  List<TopProduct>? get top_product;
  @override
  List<HomeBanner>? get bottom_banner;
  @override
  List<TopProduct>? get bottom_product;
  @override
  @JsonKey(ignore: true)
  _$$MobileHomeDataImplCopyWith<_$MobileHomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeBanner _$HomeBannerFromJson(Map<String, dynamic> json) {
  return _HomeBanner.fromJson(json);
}

/// @nodoc
mixin _$HomeBanner {
  int? get id => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get alternative_text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeBannerCopyWith<HomeBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBannerCopyWith<$Res> {
  factory $HomeBannerCopyWith(
          HomeBanner value, $Res Function(HomeBanner) then) =
      _$HomeBannerCopyWithImpl<$Res, HomeBanner>;
  @useResult
  $Res call({int? id, String? banner, String? alternative_text});
}

/// @nodoc
class _$HomeBannerCopyWithImpl<$Res, $Val extends HomeBanner>
    implements $HomeBannerCopyWith<$Res> {
  _$HomeBannerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
    Object? alternative_text = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      alternative_text: freezed == alternative_text
          ? _value.alternative_text
          : alternative_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBannerImplCopyWith<$Res>
    implements $HomeBannerCopyWith<$Res> {
  factory _$$HomeBannerImplCopyWith(
          _$HomeBannerImpl value, $Res Function(_$HomeBannerImpl) then) =
      __$$HomeBannerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? banner, String? alternative_text});
}

/// @nodoc
class __$$HomeBannerImplCopyWithImpl<$Res>
    extends _$HomeBannerCopyWithImpl<$Res, _$HomeBannerImpl>
    implements _$$HomeBannerImplCopyWith<$Res> {
  __$$HomeBannerImplCopyWithImpl(
      _$HomeBannerImpl _value, $Res Function(_$HomeBannerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
    Object? alternative_text = freezed,
  }) {
    return _then(_$HomeBannerImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      alternative_text: freezed == alternative_text
          ? _value.alternative_text
          : alternative_text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeBannerImpl implements _HomeBanner {
  const _$HomeBannerImpl({this.id, this.banner, this.alternative_text});

  factory _$HomeBannerImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeBannerImplFromJson(json);

  @override
  final int? id;
  @override
  final String? banner;
  @override
  final String? alternative_text;

  @override
  String toString() {
    return 'HomeBanner(id: $id, banner: $banner, alternative_text: $alternative_text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBannerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.alternative_text, alternative_text) ||
                other.alternative_text == alternative_text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, banner, alternative_text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBannerImplCopyWith<_$HomeBannerImpl> get copyWith =>
      __$$HomeBannerImplCopyWithImpl<_$HomeBannerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeBannerImplToJson(
      this,
    );
  }
}

abstract class _HomeBanner implements HomeBanner {
  const factory _HomeBanner(
      {final int? id,
      final String? banner,
      final String? alternative_text}) = _$HomeBannerImpl;

  factory _HomeBanner.fromJson(Map<String, dynamic> json) =
      _$HomeBannerImpl.fromJson;

  @override
  int? get id;
  @override
  String? get banner;
  @override
  String? get alternative_text;
  @override
  @JsonKey(ignore: true)
  _$$HomeBannerImplCopyWith<_$HomeBannerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TopProduct _$TopProductFromJson(Map<String, dynamic> json) {
  return _TopProduct.fromJson(json);
}

/// @nodoc
mixin _$TopProduct {
  int? get top_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<MobileProduct>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopProductCopyWith<TopProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopProductCopyWith<$Res> {
  factory $TopProductCopyWith(
          TopProduct value, $Res Function(TopProduct) then) =
      _$TopProductCopyWithImpl<$Res, TopProduct>;
  @useResult
  $Res call({int? top_id, String? name, List<MobileProduct>? products});
}

/// @nodoc
class _$TopProductCopyWithImpl<$Res, $Val extends TopProduct>
    implements $TopProductCopyWith<$Res> {
  _$TopProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_id = freezed,
    Object? name = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      top_id: freezed == top_id
          ? _value.top_id
          : top_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MobileProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopProductImplCopyWith<$Res>
    implements $TopProductCopyWith<$Res> {
  factory _$$TopProductImplCopyWith(
          _$TopProductImpl value, $Res Function(_$TopProductImpl) then) =
      __$$TopProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? top_id, String? name, List<MobileProduct>? products});
}

/// @nodoc
class __$$TopProductImplCopyWithImpl<$Res>
    extends _$TopProductCopyWithImpl<$Res, _$TopProductImpl>
    implements _$$TopProductImplCopyWith<$Res> {
  __$$TopProductImplCopyWithImpl(
      _$TopProductImpl _value, $Res Function(_$TopProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_id = freezed,
    Object? name = freezed,
    Object? products = freezed,
  }) {
    return _then(_$TopProductImpl(
      top_id: freezed == top_id
          ? _value.top_id
          : top_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<MobileProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopProductImpl implements _TopProduct {
  const _$TopProductImpl(
      {this.top_id, this.name, final List<MobileProduct>? products})
      : _products = products;

  factory _$TopProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopProductImplFromJson(json);

  @override
  final int? top_id;
  @override
  final String? name;
  final List<MobileProduct>? _products;
  @override
  List<MobileProduct>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopProduct(top_id: $top_id, name: $name, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopProductImpl &&
            (identical(other.top_id, top_id) || other.top_id == top_id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, top_id, name,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopProductImplCopyWith<_$TopProductImpl> get copyWith =>
      __$$TopProductImplCopyWithImpl<_$TopProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopProductImplToJson(
      this,
    );
  }
}

abstract class _TopProduct implements TopProduct {
  const factory _TopProduct(
      {final int? top_id,
      final String? name,
      final List<MobileProduct>? products}) = _$TopProductImpl;

  factory _TopProduct.fromJson(Map<String, dynamic> json) =
      _$TopProductImpl.fromJson;

  @override
  int? get top_id;
  @override
  String? get name;
  @override
  List<MobileProduct>? get products;
  @override
  @JsonKey(ignore: true)
  _$$TopProductImplCopyWith<_$TopProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileProduct _$MobileProductFromJson(Map<String, dynamic> json) {
  return _MobileProduct.fromJson(json);
}

/// @nodoc
mixin _$MobileProduct {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get product_type => throw _privateConstructorUsedError;
  double? get price_to_pay => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileProductCopyWith<MobileProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileProductCopyWith<$Res> {
  factory $MobileProductCopyWith(
          MobileProduct value, $Res Function(MobileProduct) then) =
      _$MobileProductCopyWithImpl<$Res, MobileProduct>;
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
class _$MobileProductCopyWithImpl<$Res, $Val extends MobileProduct>
    implements $MobileProductCopyWith<$Res> {
  _$MobileProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
abstract class _$$MobileProductImplCopyWith<$Res>
    implements $MobileProductCopyWith<$Res> {
  factory _$$MobileProductImplCopyWith(
          _$MobileProductImpl value, $Res Function(_$MobileProductImpl) then) =
      __$$MobileProductImplCopyWithImpl<$Res>;
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
class __$$MobileProductImplCopyWithImpl<$Res>
    extends _$MobileProductCopyWithImpl<$Res, _$MobileProductImpl>
    implements _$$MobileProductImplCopyWith<$Res> {
  __$$MobileProductImplCopyWithImpl(
      _$MobileProductImpl _value, $Res Function(_$MobileProductImpl) _then)
      : super(_value, _then);

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
    return _then(_$MobileProductImpl(
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
class _$MobileProductImpl implements _MobileProduct {
  const _$MobileProductImpl(
      {this.id,
      this.name,
      this.status,
      this.discount,
      this.price,
      this.image,
      this.product_type,
      this.price_to_pay});

  factory _$MobileProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileProductImplFromJson(json);

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
    return 'MobileProduct(id: $id, name: $name, status: $status, discount: $discount, price: $price, image: $image, product_type: $product_type, price_to_pay: $price_to_pay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileProductImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, discount,
      price, image, product_type, price_to_pay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileProductImplCopyWith<_$MobileProductImpl> get copyWith =>
      __$$MobileProductImplCopyWithImpl<_$MobileProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileProductImplToJson(
      this,
    );
  }
}

abstract class _MobileProduct implements MobileProduct {
  const factory _MobileProduct(
      {final int? id,
      final String? name,
      final String? status,
      final int? discount,
      final int? price,
      final String? image,
      final String? product_type,
      final double? price_to_pay}) = _$MobileProductImpl;

  factory _MobileProduct.fromJson(Map<String, dynamic> json) =
      _$MobileProductImpl.fromJson;

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
  @override
  @JsonKey(ignore: true)
  _$$MobileProductImplCopyWith<_$MobileProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
