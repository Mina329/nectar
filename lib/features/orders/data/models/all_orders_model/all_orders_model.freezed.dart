// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllOrdersModel _$AllOrdersModelFromJson(Map<String, dynamic> json) {
  return _AllOrdersModel.fromJson(json);
}

/// @nodoc
mixin _$AllOrdersModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get addressId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  double? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllOrdersModelCopyWith<AllOrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllOrdersModelCopyWith<$Res> {
  factory $AllOrdersModelCopyWith(
          AllOrdersModel value, $Res Function(AllOrdersModel) then) =
      _$AllOrdersModelCopyWithImpl<$Res, AllOrdersModel>;
  @useResult
  $Res call(
      {String? id,
      String? status,
      String? userId,
      String? addressId,
      DateTime? createdAt,
      DateTime? expiresAt,
      double? totalPrice});
}

/// @nodoc
class _$AllOrdersModelCopyWithImpl<$Res, $Val extends AllOrdersModel>
    implements $AllOrdersModelCopyWith<$Res> {
  _$AllOrdersModelCopyWithImpl(this._value, this._then);

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
    Object? totalPrice = freezed,
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllOrdersModelCopyWith<$Res>
    implements $AllOrdersModelCopyWith<$Res> {
  factory _$$_AllOrdersModelCopyWith(
          _$_AllOrdersModel value, $Res Function(_$_AllOrdersModel) then) =
      __$$_AllOrdersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? status,
      String? userId,
      String? addressId,
      DateTime? createdAt,
      DateTime? expiresAt,
      double? totalPrice});
}

/// @nodoc
class __$$_AllOrdersModelCopyWithImpl<$Res>
    extends _$AllOrdersModelCopyWithImpl<$Res, _$_AllOrdersModel>
    implements _$$_AllOrdersModelCopyWith<$Res> {
  __$$_AllOrdersModelCopyWithImpl(
      _$_AllOrdersModel _value, $Res Function(_$_AllOrdersModel) _then)
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
    Object? totalPrice = freezed,
  }) {
    return _then(_$_AllOrdersModel(
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllOrdersModel implements _AllOrdersModel {
  _$_AllOrdersModel(
      {this.id,
      this.status,
      this.userId,
      this.addressId,
      this.createdAt,
      this.expiresAt,
      this.totalPrice});

  factory _$_AllOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$$_AllOrdersModelFromJson(json);

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
  final double? totalPrice;

  @override
  String toString() {
    return 'AllOrdersModel(id: $id, status: $status, userId: $userId, addressId: $addressId, createdAt: $createdAt, expiresAt: $expiresAt, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllOrdersModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, userId, addressId,
      createdAt, expiresAt, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllOrdersModelCopyWith<_$_AllOrdersModel> get copyWith =>
      __$$_AllOrdersModelCopyWithImpl<_$_AllOrdersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllOrdersModelToJson(
      this,
    );
  }
}

abstract class _AllOrdersModel implements AllOrdersModel {
  factory _AllOrdersModel(
      {final String? id,
      final String? status,
      final String? userId,
      final String? addressId,
      final DateTime? createdAt,
      final DateTime? expiresAt,
      final double? totalPrice}) = _$_AllOrdersModel;

  factory _AllOrdersModel.fromJson(Map<String, dynamic> json) =
      _$_AllOrdersModel.fromJson;

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
  double? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_AllOrdersModelCopyWith<_$_AllOrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
