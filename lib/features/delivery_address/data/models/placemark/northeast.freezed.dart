// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'northeast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Northeast _$NortheastFromJson(Map<String, dynamic> json) {
  return _Northeast.fromJson(json);
}

/// @nodoc
mixin _$Northeast {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NortheastCopyWith<Northeast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NortheastCopyWith<$Res> {
  factory $NortheastCopyWith(Northeast value, $Res Function(Northeast) then) =
      _$NortheastCopyWithImpl<$Res, Northeast>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$NortheastCopyWithImpl<$Res, $Val extends Northeast>
    implements $NortheastCopyWith<$Res> {
  _$NortheastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NortheastCopyWith<$Res> implements $NortheastCopyWith<$Res> {
  factory _$$_NortheastCopyWith(
          _$_Northeast value, $Res Function(_$_Northeast) then) =
      __$$_NortheastCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_NortheastCopyWithImpl<$Res>
    extends _$NortheastCopyWithImpl<$Res, _$_Northeast>
    implements _$$_NortheastCopyWith<$Res> {
  __$$_NortheastCopyWithImpl(
      _$_Northeast _value, $Res Function(_$_Northeast) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Northeast(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Northeast implements _Northeast {
  _$_Northeast({this.lat, this.lng});

  factory _$_Northeast.fromJson(Map<String, dynamic> json) =>
      _$$_NortheastFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Northeast(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Northeast &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NortheastCopyWith<_$_Northeast> get copyWith =>
      __$$_NortheastCopyWithImpl<_$_Northeast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NortheastToJson(
      this,
    );
  }
}

abstract class _Northeast implements Northeast {
  factory _Northeast({final double? lat, final double? lng}) = _$_Northeast;

  factory _Northeast.fromJson(Map<String, dynamic> json) =
      _$_Northeast.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_NortheastCopyWith<_$_Northeast> get copyWith =>
      throw _privateConstructorUsedError;
}
