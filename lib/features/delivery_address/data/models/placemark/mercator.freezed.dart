// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mercator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mercator _$MercatorFromJson(Map<String, dynamic> json) {
  return _Mercator.fromJson(json);
}

/// @nodoc
mixin _$Mercator {
  double? get x => throw _privateConstructorUsedError;
  double? get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MercatorCopyWith<Mercator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MercatorCopyWith<$Res> {
  factory $MercatorCopyWith(Mercator value, $Res Function(Mercator) then) =
      _$MercatorCopyWithImpl<$Res, Mercator>;
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class _$MercatorCopyWithImpl<$Res, $Val extends Mercator>
    implements $MercatorCopyWith<$Res> {
  _$MercatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MercatorCopyWith<$Res> implements $MercatorCopyWith<$Res> {
  factory _$$_MercatorCopyWith(
          _$_Mercator value, $Res Function(_$_Mercator) then) =
      __$$_MercatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? x, double? y});
}

/// @nodoc
class __$$_MercatorCopyWithImpl<$Res>
    extends _$MercatorCopyWithImpl<$Res, _$_Mercator>
    implements _$$_MercatorCopyWith<$Res> {
  __$$_MercatorCopyWithImpl(
      _$_Mercator _value, $Res Function(_$_Mercator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_Mercator(
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double?,
      y: freezed == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mercator implements _Mercator {
  _$_Mercator({this.x, this.y});

  factory _$_Mercator.fromJson(Map<String, dynamic> json) =>
      _$$_MercatorFromJson(json);

  @override
  final double? x;
  @override
  final double? y;

  @override
  String toString() {
    return 'Mercator(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mercator &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MercatorCopyWith<_$_Mercator> get copyWith =>
      __$$_MercatorCopyWithImpl<_$_Mercator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MercatorToJson(
      this,
    );
  }
}

abstract class _Mercator implements Mercator {
  factory _Mercator({final double? x, final double? y}) = _$_Mercator;

  factory _Mercator.fromJson(Map<String, dynamic> json) = _$_Mercator.fromJson;

  @override
  double? get x;
  @override
  double? get y;
  @override
  @JsonKey(ignore: true)
  _$$_MercatorCopyWith<_$_Mercator> get copyWith =>
      throw _privateConstructorUsedError;
}
