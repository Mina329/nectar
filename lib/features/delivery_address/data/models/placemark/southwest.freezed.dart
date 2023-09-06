// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'southwest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Southwest _$SouthwestFromJson(Map<String, dynamic> json) {
  return _Southwest.fromJson(json);
}

/// @nodoc
mixin _$Southwest {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SouthwestCopyWith<Southwest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SouthwestCopyWith<$Res> {
  factory $SouthwestCopyWith(Southwest value, $Res Function(Southwest) then) =
      _$SouthwestCopyWithImpl<$Res, Southwest>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$SouthwestCopyWithImpl<$Res, $Val extends Southwest>
    implements $SouthwestCopyWith<$Res> {
  _$SouthwestCopyWithImpl(this._value, this._then);

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
abstract class _$$_SouthwestCopyWith<$Res> implements $SouthwestCopyWith<$Res> {
  factory _$$_SouthwestCopyWith(
          _$_Southwest value, $Res Function(_$_Southwest) then) =
      __$$_SouthwestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_SouthwestCopyWithImpl<$Res>
    extends _$SouthwestCopyWithImpl<$Res, _$_Southwest>
    implements _$$_SouthwestCopyWith<$Res> {
  __$$_SouthwestCopyWithImpl(
      _$_Southwest _value, $Res Function(_$_Southwest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Southwest(
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
class _$_Southwest implements _Southwest {
  _$_Southwest({this.lat, this.lng});

  factory _$_Southwest.fromJson(Map<String, dynamic> json) =>
      _$$_SouthwestFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Southwest(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Southwest &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SouthwestCopyWith<_$_Southwest> get copyWith =>
      __$$_SouthwestCopyWithImpl<_$_Southwest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SouthwestToJson(
      this,
    );
  }
}

abstract class _Southwest implements Southwest {
  factory _Southwest({final double? lat, final double? lng}) = _$_Southwest;

  factory _Southwest.fromJson(Map<String, dynamic> json) =
      _$_Southwest.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_SouthwestCopyWith<_$_Southwest> get copyWith =>
      throw _privateConstructorUsedError;
}
