// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  String? get id => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  dynamic get orderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call({String? id, String? userId, dynamic orderId});
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? userId, dynamic orderId});
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res, _$_Cart>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? orderId = freezed,
  }) {
    return _then(_$_Cart(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart implements _Cart {
  _$_Cart({this.id, this.userId, this.orderId});

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  final String? id;
  @override
  final String? userId;
  @override
  final dynamic orderId;

  @override
  String toString() {
    return 'Cart(id: $id, userId: $userId, orderId: $orderId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.orderId, orderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, const DeepCollectionEquality().hash(orderId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  factory _Cart(
      {final String? id,
      final String? userId,
      final dynamic orderId}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  String? get id;
  @override
  String? get userId;
  @override
  dynamic get orderId;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}
