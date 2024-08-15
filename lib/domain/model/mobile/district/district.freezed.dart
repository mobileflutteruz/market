// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'district.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

District _$DistrictFromJson(Map<String, dynamic> json) {
  return _District.fromJson(json);
}

/// @nodoc
mixin _$District {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Districts> get districts => throw _privateConstructorUsedError;

  /// Serializes this District to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictCopyWith<District> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictCopyWith<$Res> {
  factory $DistrictCopyWith(District value, $Res Function(District) then) =
      _$DistrictCopyWithImpl<$Res, District>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Districts> districts});
}

/// @nodoc
class _$DistrictCopyWithImpl<$Res, $Val extends District>
    implements $DistrictCopyWith<$Res> {
  _$DistrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? districts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      districts: null == districts
          ? _value.districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Districts>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictImplCopyWith<$Res>
    implements $DistrictCopyWith<$Res> {
  factory _$$DistrictImplCopyWith(
          _$DistrictImpl value, $Res Function(_$DistrictImpl) then) =
      __$$DistrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Districts> districts});
}

/// @nodoc
class __$$DistrictImplCopyWithImpl<$Res>
    extends _$DistrictCopyWithImpl<$Res, _$DistrictImpl>
    implements _$$DistrictImplCopyWith<$Res> {
  __$$DistrictImplCopyWithImpl(
      _$DistrictImpl _value, $Res Function(_$DistrictImpl) _then)
      : super(_value, _then);

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? districts = null,
  }) {
    return _then(_$DistrictImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      districts: null == districts
          ? _value._districts
          : districts // ignore: cast_nullable_to_non_nullable
              as List<Districts>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictImpl implements _District {
  const _$DistrictImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      required final List<Districts> districts})
      : _districts = districts;

  factory _$DistrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<Districts> _districts;
  @override
  List<Districts> get districts {
    if (_districts is EqualUnmodifiableListView) return _districts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_districts);
  }

  @override
  String toString() {
    return 'District(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, districts: $districts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._districts, _districts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdAt, updatedAt,
      const DeepCollectionEquality().hash(_districts));

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      __$$DistrictImplCopyWithImpl<_$DistrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictImplToJson(
      this,
    );
  }
}

abstract class _District implements District {
  const factory _District(
      {required final int id,
      required final String name,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      required final List<Districts> districts}) = _$DistrictImpl;

  factory _District.fromJson(Map<String, dynamic> json) =
      _$DistrictImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  List<Districts> get districts;

  /// Create a copy of District
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictImplCopyWith<_$DistrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Districts _$DistrictsFromJson(Map<String, dynamic> json) {
  return _Districts.fromJson(json);
}

/// @nodoc
mixin _$Districts {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  int get regionId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Districts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DistrictsCopyWith<Districts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistrictsCopyWith<$Res> {
  factory $DistrictsCopyWith(Districts value, $Res Function(Districts) then) =
      _$DistrictsCopyWithImpl<$Res, Districts>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'region_id') int regionId,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$DistrictsCopyWithImpl<$Res, $Val extends Districts>
    implements $DistrictsCopyWith<$Res> {
  _$DistrictsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? regionId = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistrictsImplCopyWith<$Res>
    implements $DistrictsCopyWith<$Res> {
  factory _$$DistrictsImplCopyWith(
          _$DistrictsImpl value, $Res Function(_$DistrictsImpl) then) =
      __$$DistrictsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'region_id') int regionId,
      String name,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$DistrictsImplCopyWithImpl<$Res>
    extends _$DistrictsCopyWithImpl<$Res, _$DistrictsImpl>
    implements _$$DistrictsImplCopyWith<$Res> {
  __$$DistrictsImplCopyWithImpl(
      _$DistrictsImpl _value, $Res Function(_$DistrictsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? regionId = null,
    Object? name = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DistrictsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistrictsImpl implements _Districts {
  const _$DistrictsImpl(
      {required this.id,
      @JsonKey(name: 'region_id') required this.regionId,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$DistrictsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistrictsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'region_id')
  final int regionId;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Districts(id: $id, regionId: $regionId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistrictsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, regionId, name, createdAt, updatedAt);

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DistrictsImplCopyWith<_$DistrictsImpl> get copyWith =>
      __$$DistrictsImplCopyWithImpl<_$DistrictsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistrictsImplToJson(
      this,
    );
  }
}

abstract class _Districts implements Districts {
  const factory _Districts(
          {required final int id,
          @JsonKey(name: 'region_id') required final int regionId,
          required final String name,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$DistrictsImpl;

  factory _Districts.fromJson(Map<String, dynamic> json) =
      _$DistrictsImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'region_id')
  int get regionId;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Districts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DistrictsImplCopyWith<_$DistrictsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
