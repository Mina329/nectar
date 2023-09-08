// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  String? get title => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get resultType => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  Position? get position => throw _privateConstructorUsedError;
  List<Access>? get access => throw _privateConstructorUsedError;
  int? get distance => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  List<Reference>? get references => throw _privateConstructorUsedError;
  List<FoodType>? get foodTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {String? title,
      String? id,
      String? resultType,
      Address? address,
      Position? position,
      List<Access>? access,
      int? distance,
      List<Category>? categories,
      List<Reference>? references,
      List<FoodType>? foodTypes});

  $AddressCopyWith<$Res>? get address;
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? resultType = freezed,
    Object? address = freezed,
    Object? position = freezed,
    Object? access = freezed,
    Object? distance = freezed,
    Object? categories = freezed,
    Object? references = freezed,
    Object? foodTypes = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      resultType: freezed == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      access: freezed == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as List<Access>?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      references: freezed == references
          ? _value.references
          : references // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      foodTypes: freezed == foodTypes
          ? _value.foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<FoodType>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$_ItemCopyWith(_$_Item value, $Res Function(_$_Item) then) =
      __$$_ItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? id,
      String? resultType,
      Address? address,
      Position? position,
      List<Access>? access,
      int? distance,
      List<Category>? categories,
      List<Reference>? references,
      List<FoodType>? foodTypes});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $PositionCopyWith<$Res>? get position;
}

/// @nodoc
class __$$_ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res, _$_Item>
    implements _$$_ItemCopyWith<$Res> {
  __$$_ItemCopyWithImpl(_$_Item _value, $Res Function(_$_Item) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? id = freezed,
    Object? resultType = freezed,
    Object? address = freezed,
    Object? position = freezed,
    Object? access = freezed,
    Object? distance = freezed,
    Object? categories = freezed,
    Object? references = freezed,
    Object? foodTypes = freezed,
  }) {
    return _then(_$_Item(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      resultType: freezed == resultType
          ? _value.resultType
          : resultType // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Position?,
      access: freezed == access
          ? _value._access
          : access // ignore: cast_nullable_to_non_nullable
              as List<Access>?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      references: freezed == references
          ? _value._references
          : references // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      foodTypes: freezed == foodTypes
          ? _value._foodTypes
          : foodTypes // ignore: cast_nullable_to_non_nullable
              as List<FoodType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Item implements _Item {
  _$_Item(
      {this.title,
      this.id,
      this.resultType,
      this.address,
      this.position,
      final List<Access>? access,
      this.distance,
      final List<Category>? categories,
      final List<Reference>? references,
      final List<FoodType>? foodTypes})
      : _access = access,
        _categories = categories,
        _references = references,
        _foodTypes = foodTypes;

  factory _$_Item.fromJson(Map<String, dynamic> json) => _$$_ItemFromJson(json);

  @override
  final String? title;
  @override
  final String? id;
  @override
  final String? resultType;
  @override
  final Address? address;
  @override
  final Position? position;
  final List<Access>? _access;
  @override
  List<Access>? get access {
    final value = _access;
    if (value == null) return null;
    if (_access is EqualUnmodifiableListView) return _access;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? distance;
  final List<Category>? _categories;
  @override
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Reference>? _references;
  @override
  List<Reference>? get references {
    final value = _references;
    if (value == null) return null;
    if (_references is EqualUnmodifiableListView) return _references;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodType>? _foodTypes;
  @override
  List<FoodType>? get foodTypes {
    final value = _foodTypes;
    if (value == null) return null;
    if (_foodTypes is EqualUnmodifiableListView) return _foodTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Item(title: $title, id: $id, resultType: $resultType, address: $address, position: $position, access: $access, distance: $distance, categories: $categories, references: $references, foodTypes: $foodTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Item &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.resultType, resultType) ||
                other.resultType == resultType) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._access, _access) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._references, _references) &&
            const DeepCollectionEquality()
                .equals(other._foodTypes, _foodTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      id,
      resultType,
      address,
      position,
      const DeepCollectionEquality().hash(_access),
      distance,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_references),
      const DeepCollectionEquality().hash(_foodTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCopyWith<_$_Item> get copyWith =>
      __$$_ItemCopyWithImpl<_$_Item>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  factory _Item(
      {final String? title,
      final String? id,
      final String? resultType,
      final Address? address,
      final Position? position,
      final List<Access>? access,
      final int? distance,
      final List<Category>? categories,
      final List<Reference>? references,
      final List<FoodType>? foodTypes}) = _$_Item;

  factory _Item.fromJson(Map<String, dynamic> json) = _$_Item.fromJson;

  @override
  String? get title;
  @override
  String? get id;
  @override
  String? get resultType;
  @override
  Address? get address;
  @override
  Position? get position;
  @override
  List<Access>? get access;
  @override
  int? get distance;
  @override
  List<Category>? get categories;
  @override
  List<Reference>? get references;
  @override
  List<FoodType>? get foodTypes;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCopyWith<_$_Item> get copyWith => throw _privateConstructorUsedError;
}
