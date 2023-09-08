// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supplier _$SupplierFromJson(Map<String, dynamic> json) {
  return _Supplier.fromJson(json);
}

/// @nodoc
mixin _$Supplier {
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupplierCopyWith<Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierCopyWith<$Res> {
  factory $SupplierCopyWith(Supplier value, $Res Function(Supplier) then) =
      _$SupplierCopyWithImpl<$Res, Supplier>;
  @useResult
  $Res call({String? id});
}

/// @nodoc
class _$SupplierCopyWithImpl<$Res, $Val extends Supplier>
    implements $SupplierCopyWith<$Res> {
  _$SupplierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SupplierCopyWith<$Res> implements $SupplierCopyWith<$Res> {
  factory _$$_SupplierCopyWith(
          _$_Supplier value, $Res Function(_$_Supplier) then) =
      __$$_SupplierCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id});
}

/// @nodoc
class __$$_SupplierCopyWithImpl<$Res>
    extends _$SupplierCopyWithImpl<$Res, _$_Supplier>
    implements _$$_SupplierCopyWith<$Res> {
  __$$_SupplierCopyWithImpl(
      _$_Supplier _value, $Res Function(_$_Supplier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$_Supplier(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Supplier implements _Supplier {
  _$_Supplier({this.id});

  factory _$_Supplier.fromJson(Map<String, dynamic> json) =>
      _$$_SupplierFromJson(json);

  @override
  final String? id;

  @override
  String toString() {
    return 'Supplier(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Supplier &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      __$$_SupplierCopyWithImpl<_$_Supplier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupplierToJson(
      this,
    );
  }
}

abstract class _Supplier implements Supplier {
  factory _Supplier({final String? id}) = _$_Supplier;

  factory _Supplier.fromJson(Map<String, dynamic> json) = _$_Supplier.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_SupplierCopyWith<_$_Supplier> get copyWith =>
      throw _privateConstructorUsedError;
}
