// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutModel _$CheckoutModelFromJson(Map<String, dynamic> json) {
  return _CheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutModel {
  Order? get order => throw _privateConstructorUsedError;
  String? get clientSecret => throw _privateConstructorUsedError;
  String? get publishableKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutModelCopyWith<CheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutModelCopyWith<$Res> {
  factory $CheckoutModelCopyWith(
          CheckoutModel value, $Res Function(CheckoutModel) then) =
      _$CheckoutModelCopyWithImpl<$Res, CheckoutModel>;
  @useResult
  $Res call({Order? order, String? clientSecret, String? publishableKey});

  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class _$CheckoutModelCopyWithImpl<$Res, $Val extends CheckoutModel>
    implements $CheckoutModelCopyWith<$Res> {
  _$CheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? clientSecret = freezed,
    Object? publishableKey = freezed,
  }) {
    return _then(_value.copyWith(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      publishableKey: freezed == publishableKey
          ? _value.publishableKey
          : publishableKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderCopyWith<$Res>? get order {
    if (_value.order == null) {
      return null;
    }

    return $OrderCopyWith<$Res>(_value.order!, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CheckoutModelCopyWith<$Res>
    implements $CheckoutModelCopyWith<$Res> {
  factory _$$_CheckoutModelCopyWith(
          _$_CheckoutModel value, $Res Function(_$_CheckoutModel) then) =
      __$$_CheckoutModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Order? order, String? clientSecret, String? publishableKey});

  @override
  $OrderCopyWith<$Res>? get order;
}

/// @nodoc
class __$$_CheckoutModelCopyWithImpl<$Res>
    extends _$CheckoutModelCopyWithImpl<$Res, _$_CheckoutModel>
    implements _$$_CheckoutModelCopyWith<$Res> {
  __$$_CheckoutModelCopyWithImpl(
      _$_CheckoutModel _value, $Res Function(_$_CheckoutModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = freezed,
    Object? clientSecret = freezed,
    Object? publishableKey = freezed,
  }) {
    return _then(_$_CheckoutModel(
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order?,
      clientSecret: freezed == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String?,
      publishableKey: freezed == publishableKey
          ? _value.publishableKey
          : publishableKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckoutModel implements _CheckoutModel {
  _$_CheckoutModel({this.order, this.clientSecret, this.publishableKey});

  factory _$_CheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckoutModelFromJson(json);

  @override
  final Order? order;
  @override
  final String? clientSecret;
  @override
  final String? publishableKey;

  @override
  String toString() {
    return 'CheckoutModel(order: $order, clientSecret: $clientSecret, publishableKey: $publishableKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckoutModel &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret) &&
            (identical(other.publishableKey, publishableKey) ||
                other.publishableKey == publishableKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, order, clientSecret, publishableKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckoutModelCopyWith<_$_CheckoutModel> get copyWith =>
      __$$_CheckoutModelCopyWithImpl<_$_CheckoutModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckoutModelToJson(
      this,
    );
  }
}

abstract class _CheckoutModel implements CheckoutModel {
  factory _CheckoutModel(
      {final Order? order,
      final String? clientSecret,
      final String? publishableKey}) = _$_CheckoutModel;

  factory _CheckoutModel.fromJson(Map<String, dynamic> json) =
      _$_CheckoutModel.fromJson;

  @override
  Order? get order;
  @override
  String? get clientSecret;
  @override
  String? get publishableKey;
  @override
  @JsonKey(ignore: true)
  _$$_CheckoutModelCopyWith<_$_CheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}
