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
  List<MobileBanners>? get banner => throw _privateConstructorUsedError;
  List<MobileDashBoard>? get product => throw _privateConstructorUsedError;

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
  $Res call({List<MobileBanners>? banner, List<MobileDashBoard>? product});
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
    Object? banner = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<MobileBanners>?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<MobileDashBoard>?,
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
  $Res call({List<MobileBanners>? banner, List<MobileDashBoard>? product});
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
    Object? banner = freezed,
    Object? product = freezed,
  }) {
    return _then(_$MobileHomeDataImpl(
      banner: freezed == banner
          ? _value._banner
          : banner // ignore: cast_nullable_to_non_nullable
              as List<MobileBanners>?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<MobileDashBoard>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileHomeDataImpl implements _MobileHomeData {
  const _$MobileHomeDataImpl(
      {final List<MobileBanners>? banner, final List<MobileDashBoard>? product})
      : _banner = banner,
        _product = product;

  factory _$MobileHomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileHomeDataImplFromJson(json);

  final List<MobileBanners>? _banner;
  @override
  List<MobileBanners>? get banner {
    final value = _banner;
    if (value == null) return null;
    if (_banner is EqualUnmodifiableListView) return _banner;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MobileDashBoard>? _product;
  @override
  List<MobileDashBoard>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MobileHomeData(banner: $banner, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileHomeDataImpl &&
            const DeepCollectionEquality().equals(other._banner, _banner) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_banner),
      const DeepCollectionEquality().hash(_product));

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
      {final List<MobileBanners>? banner,
      final List<MobileDashBoard>? product}) = _$MobileHomeDataImpl;

  factory _MobileHomeData.fromJson(Map<String, dynamic> json) =
      _$MobileHomeDataImpl.fromJson;

  @override
  List<MobileBanners>? get banner;
  @override
  List<MobileDashBoard>? get product;
  @override
  @JsonKey(ignore: true)
  _$$MobileHomeDataImplCopyWith<_$MobileHomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileBanners _$MobileBannersFromJson(Map<String, dynamic> json) {
  return _MobileBanners.fromJson(json);
}

/// @nodoc
mixin _$MobileBanners {
  int? get top_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<BannerModel>? get banners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileBannersCopyWith<MobileBanners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileBannersCopyWith<$Res> {
  factory $MobileBannersCopyWith(
          MobileBanners value, $Res Function(MobileBanners) then) =
      _$MobileBannersCopyWithImpl<$Res, MobileBanners>;
  @useResult
  $Res call({int? top_id, String? name, List<BannerModel>? banners});
}

/// @nodoc
class _$MobileBannersCopyWithImpl<$Res, $Val extends MobileBanners>
    implements $MobileBannersCopyWith<$Res> {
  _$MobileBannersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_id = freezed,
    Object? name = freezed,
    Object? banners = freezed,
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
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MobileBannersImplCopyWith<$Res>
    implements $MobileBannersCopyWith<$Res> {
  factory _$$MobileBannersImplCopyWith(
          _$MobileBannersImpl value, $Res Function(_$MobileBannersImpl) then) =
      __$$MobileBannersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? top_id, String? name, List<BannerModel>? banners});
}

/// @nodoc
class __$$MobileBannersImplCopyWithImpl<$Res>
    extends _$MobileBannersCopyWithImpl<$Res, _$MobileBannersImpl>
    implements _$$MobileBannersImplCopyWith<$Res> {
  __$$MobileBannersImplCopyWithImpl(
      _$MobileBannersImpl _value, $Res Function(_$MobileBannersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_id = freezed,
    Object? name = freezed,
    Object? banners = freezed,
  }) {
    return _then(_$MobileBannersImpl(
      top_id: freezed == top_id
          ? _value.top_id
          : top_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MobileBannersImpl implements _MobileBanners {
  const _$MobileBannersImpl(
      {this.top_id, this.name, final List<BannerModel>? banners})
      : _banners = banners;

  factory _$MobileBannersImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileBannersImplFromJson(json);

  @override
  final int? top_id;
  @override
  final String? name;
  final List<BannerModel>? _banners;
  @override
  List<BannerModel>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MobileBanners(top_id: $top_id, name: $name, banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileBannersImpl &&
            (identical(other.top_id, top_id) || other.top_id == top_id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, top_id, name, const DeepCollectionEquality().hash(_banners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MobileBannersImplCopyWith<_$MobileBannersImpl> get copyWith =>
      __$$MobileBannersImplCopyWithImpl<_$MobileBannersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileBannersImplToJson(
      this,
    );
  }
}

abstract class _MobileBanners implements MobileBanners {
  const factory _MobileBanners(
      {final int? top_id,
      final String? name,
      final List<BannerModel>? banners}) = _$MobileBannersImpl;

  factory _MobileBanners.fromJson(Map<String, dynamic> json) =
      _$MobileBannersImpl.fromJson;

  @override
  int? get top_id;
  @override
  String? get name;
  @override
  List<BannerModel>? get banners;
  @override
  @JsonKey(ignore: true)
  _$$MobileBannersImplCopyWith<_$MobileBannersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) {
  return _BannerModel.fromJson(json);
}

/// @nodoc
mixin _$BannerModel {
  int? get id => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get alternative_text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerModelCopyWith<BannerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerModelCopyWith<$Res> {
  factory $BannerModelCopyWith(
          BannerModel value, $Res Function(BannerModel) then) =
      _$BannerModelCopyWithImpl<$Res, BannerModel>;
  @useResult
  $Res call({int? id, String? banner, String? alternative_text});
}

/// @nodoc
class _$BannerModelCopyWithImpl<$Res, $Val extends BannerModel>
    implements $BannerModelCopyWith<$Res> {
  _$BannerModelCopyWithImpl(this._value, this._then);

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
abstract class _$$BannerModelImplCopyWith<$Res>
    implements $BannerModelCopyWith<$Res> {
  factory _$$BannerModelImplCopyWith(
          _$BannerModelImpl value, $Res Function(_$BannerModelImpl) then) =
      __$$BannerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? banner, String? alternative_text});
}

/// @nodoc
class __$$BannerModelImplCopyWithImpl<$Res>
    extends _$BannerModelCopyWithImpl<$Res, _$BannerModelImpl>
    implements _$$BannerModelImplCopyWith<$Res> {
  __$$BannerModelImplCopyWithImpl(
      _$BannerModelImpl _value, $Res Function(_$BannerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? banner = freezed,
    Object? alternative_text = freezed,
  }) {
    return _then(_$BannerModelImpl(
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
class _$BannerModelImpl implements _BannerModel {
  const _$BannerModelImpl({this.id, this.banner, this.alternative_text});

  factory _$BannerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? banner;
  @override
  final String? alternative_text;

  @override
  String toString() {
    return 'BannerModel(id: $id, banner: $banner, alternative_text: $alternative_text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerModelImpl &&
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
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      __$$BannerModelImplCopyWithImpl<_$BannerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerModelImplToJson(
      this,
    );
  }
}

abstract class _BannerModel implements BannerModel {
  const factory _BannerModel(
      {final int? id,
      final String? banner,
      final String? alternative_text}) = _$BannerModelImpl;

  factory _BannerModel.fromJson(Map<String, dynamic> json) =
      _$BannerModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get banner;
  @override
  String? get alternative_text;
  @override
  @JsonKey(ignore: true)
  _$$BannerModelImplCopyWith<_$BannerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MobileDashBoard _$MobileDashBoardFromJson(Map<String, dynamic> json) {
  return _MobileDashBoard.fromJson(json);
}

/// @nodoc
mixin _$MobileDashBoard {
  int? get top_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<MobileProduct>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MobileDashBoardCopyWith<MobileDashBoard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MobileDashBoardCopyWith<$Res> {
  factory $MobileDashBoardCopyWith(
          MobileDashBoard value, $Res Function(MobileDashBoard) then) =
      _$MobileDashBoardCopyWithImpl<$Res, MobileDashBoard>;
  @useResult
  $Res call({int? top_id, String? name, List<MobileProduct>? products});
}

/// @nodoc
class _$MobileDashBoardCopyWithImpl<$Res, $Val extends MobileDashBoard>
    implements $MobileDashBoardCopyWith<$Res> {
  _$MobileDashBoardCopyWithImpl(this._value, this._then);

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
abstract class _$$MobileDashBoardImplCopyWith<$Res>
    implements $MobileDashBoardCopyWith<$Res> {
  factory _$$MobileDashBoardImplCopyWith(_$MobileDashBoardImpl value,
          $Res Function(_$MobileDashBoardImpl) then) =
      __$$MobileDashBoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? top_id, String? name, List<MobileProduct>? products});
}

/// @nodoc
class __$$MobileDashBoardImplCopyWithImpl<$Res>
    extends _$MobileDashBoardCopyWithImpl<$Res, _$MobileDashBoardImpl>
    implements _$$MobileDashBoardImplCopyWith<$Res> {
  __$$MobileDashBoardImplCopyWithImpl(
      _$MobileDashBoardImpl _value, $Res Function(_$MobileDashBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? top_id = freezed,
    Object? name = freezed,
    Object? products = freezed,
  }) {
    return _then(_$MobileDashBoardImpl(
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
class _$MobileDashBoardImpl implements _MobileDashBoard {
  const _$MobileDashBoardImpl(
      {this.top_id, this.name, final List<MobileProduct>? products})
      : _products = products;

  factory _$MobileDashBoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$MobileDashBoardImplFromJson(json);

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
    return 'MobileDashBoard(top_id: $top_id, name: $name, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MobileDashBoardImpl &&
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
  _$$MobileDashBoardImplCopyWith<_$MobileDashBoardImpl> get copyWith =>
      __$$MobileDashBoardImplCopyWithImpl<_$MobileDashBoardImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MobileDashBoardImplToJson(
      this,
    );
  }
}

abstract class _MobileDashBoard implements MobileDashBoard {
  const factory _MobileDashBoard(
      {final int? top_id,
      final String? name,
      final List<MobileProduct>? products}) = _$MobileDashBoardImpl;

  factory _MobileDashBoard.fromJson(Map<String, dynamic> json) =
      _$MobileDashBoardImpl.fromJson;

  @override
  int? get top_id;
  @override
  String? get name;
  @override
  List<MobileProduct>? get products;
  @override
  @JsonKey(ignore: true)
  _$$MobileDashBoardImplCopyWith<_$MobileDashBoardImpl> get copyWith =>
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
  int? get price_to_pay => throw _privateConstructorUsedError;

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
      int? price_to_pay});
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
              as int?,
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
      int? price_to_pay});
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
              as int?,
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
  final int? price_to_pay;

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
      final int? price_to_pay}) = _$MobileProductImpl;

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
  int? get price_to_pay;
  @override
  @JsonKey(ignore: true)
  _$$MobileProductImplCopyWith<_$MobileProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
