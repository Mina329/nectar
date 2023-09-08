// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodType _$FoodTypeFromJson(Map<String, dynamic> json) {
  return _FoodType.fromJson(json);
}

/// @nodoc
mixin _$FoodType {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get primary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodTypeCopyWith<FoodType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodTypeCopyWith<$Res> {
  factory $FoodTypeCopyWith(FoodType value, $Res Function(FoodType) then) =
      _$FoodTypeCopyWithImpl<$Res, FoodType>;
  @useResult
  $Res call({String? id, String? name, bool? primary});
}

/// @nodoc
class _$FoodTypeCopyWithImpl<$Res, $Val extends FoodType>
    implements $FoodTypeCopyWith<$Res> {
  _$FoodTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? primary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FoodTypeCopyWith<$Res> implements $FoodTypeCopyWith<$Res> {
  factory _$$_FoodTypeCopyWith(
          _$_FoodType value, $Res Function(_$_FoodType) then) =
      __$$_FoodTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, bool? primary});
}

/// @nodoc
class __$$_FoodTypeCopyWithImpl<$Res>
    extends _$FoodTypeCopyWithImpl<$Res, _$_FoodType>
    implements _$$_FoodTypeCopyWith<$Res> {
  __$$_FoodTypeCopyWithImpl(
      _$_FoodType _value, $Res Function(_$_FoodType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? primary = freezed,
  }) {
    return _then(_$_FoodType(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      primary: freezed == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FoodType implements _FoodType {
  _$_FoodType({this.id, this.name, this.primary});

  factory _$_FoodType.fromJson(Map<String, dynamic> json) =>
      _$$_FoodTypeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final bool? primary;

  @override
  String toString() {
    return 'FoodType(id: $id, name: $name, primary: $primary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FoodType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.primary, primary) || other.primary == primary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, primary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoodTypeCopyWith<_$_FoodType> get copyWith =>
      __$$_FoodTypeCopyWithImpl<_$_FoodType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FoodTypeToJson(
      this,
    );
  }
}

abstract class _FoodType implements FoodType {
  factory _FoodType(
      {final String? id,
      final String? name,
      final bool? primary}) = _$_FoodType;

  factory _FoodType.fromJson(Map<String, dynamic> json) = _$_FoodType.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  bool? get primary;
  @override
  @JsonKey(ignore: true)
  _$$_FoodTypeCopyWith<_$_FoodType> get copyWith =>
      throw _privateConstructorUsedError;
}
