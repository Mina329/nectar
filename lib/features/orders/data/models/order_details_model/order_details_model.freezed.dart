// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsModel _$OrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get addressId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<Item>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsModelCopyWith<OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsModelCopyWith<$Res> {
  factory $OrderDetailsModelCopyWith(
          OrderDetailsModel value, $Res Function(OrderDetailsModel) then) =
      _$OrderDetailsModelCopyWithImpl<$Res, OrderDetailsModel>;
  @useResult
  $Res call(
      {String? id,
      String? status,
      String? userId,
      String? addressId,
      DateTime? createdAt,
      DateTime? expiresAt,
      Address? address,
      User? user,
      List<Item>? items});

  $AddressCopyWith<$Res>? get address;
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$OrderDetailsModelCopyWithImpl<$Res, $Val extends OrderDetailsModel>
    implements $OrderDetailsModelCopyWith<$Res> {
  _$OrderDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? addressId = freezed,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? address = freezed,
    Object? user = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderDetailsModelCopyWith<$Res>
    implements $OrderDetailsModelCopyWith<$Res> {
  factory _$$_OrderDetailsModelCopyWith(_$_OrderDetailsModel value,
          $Res Function(_$_OrderDetailsModel) then) =
      __$$_OrderDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? status,
      String? userId,
      String? addressId,
      DateTime? createdAt,
      DateTime? expiresAt,
      Address? address,
      User? user,
      List<Item>? items});

  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_OrderDetailsModelCopyWithImpl<$Res>
    extends _$OrderDetailsModelCopyWithImpl<$Res, _$_OrderDetailsModel>
    implements _$$_OrderDetailsModelCopyWith<$Res> {
  __$$_OrderDetailsModelCopyWithImpl(
      _$_OrderDetailsModel _value, $Res Function(_$_OrderDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? userId = freezed,
    Object? addressId = freezed,
    Object? createdAt = freezed,
    Object? expiresAt = freezed,
    Object? address = freezed,
    Object? user = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_OrderDetailsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      addressId: freezed == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailsModel implements _OrderDetailsModel {
  _$_OrderDetailsModel(
      {this.id,
      this.status,
      this.userId,
      this.addressId,
      this.createdAt,
      this.expiresAt,
      this.address,
      this.user,
      final List<Item>? items})
      : _items = items;

  factory _$_OrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsModelFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  final String? userId;
  @override
  final String? addressId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? expiresAt;
  @override
  final Address? address;
  @override
  final User? user;
  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderDetailsModel(id: $id, status: $status, userId: $userId, addressId: $addressId, createdAt: $createdAt, expiresAt: $expiresAt, address: $address, user: $user, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      status,
      userId,
      addressId,
      createdAt,
      expiresAt,
      address,
      user,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      __$$_OrderDetailsModelCopyWithImpl<_$_OrderDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailsModel implements OrderDetailsModel {
  factory _OrderDetailsModel(
      {final String? id,
      final String? status,
      final String? userId,
      final String? addressId,
      final DateTime? createdAt,
      final DateTime? expiresAt,
      final Address? address,
      final User? user,
      final List<Item>? items}) = _$_OrderDetailsModel;

  factory _OrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsModel.fromJson;

  @override
  String? get id;
  @override
  String? get status;
  @override
  String? get userId;
  @override
  String? get addressId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get expiresAt;
  @override
  Address? get address;
  @override
  User? get user;
  @override
  List<Item>? get items;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsModelCopyWith<_$_OrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
