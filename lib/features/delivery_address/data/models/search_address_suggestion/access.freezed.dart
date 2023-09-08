// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Access _$AccessFromJson(Map<String, dynamic> json) {
  return _Access.fromJson(json);
}

/// @nodoc
mixin _$Access {
  double? get lat => throw _privateConstructorUsedError;
  double? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessCopyWith<Access> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessCopyWith<$Res> {
  factory $AccessCopyWith(Access value, $Res Function(Access) then) =
      _$AccessCopyWithImpl<$Res, Access>;
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class _$AccessCopyWithImpl<$Res, $Val extends Access>
    implements $AccessCopyWith<$Res> {
  _$AccessCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccessCopyWith<$Res> implements $AccessCopyWith<$Res> {
  factory _$$_AccessCopyWith(_$_Access value, $Res Function(_$_Access) then) =
      __$$_AccessCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lng});
}

/// @nodoc
class __$$_AccessCopyWithImpl<$Res>
    extends _$AccessCopyWithImpl<$Res, _$_Access>
    implements _$$_AccessCopyWith<$Res> {
  __$$_AccessCopyWithImpl(_$_Access _value, $Res Function(_$_Access) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Access(
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
class _$_Access implements _Access {
  _$_Access({this.lat, this.lng});

  factory _$_Access.fromJson(Map<String, dynamic> json) =>
      _$$_AccessFromJson(json);

  @override
  final double? lat;
  @override
  final double? lng;

  @override
  String toString() {
    return 'Access(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Access &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      __$$_AccessCopyWithImpl<_$_Access>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessToJson(
      this,
    );
  }
}

abstract class _Access implements Access {
  factory _Access({final double? lat, final double? lng}) = _$_Access;

  factory _Access.fromJson(Map<String, dynamic> json) = _$_Access.fromJson;

  @override
  double? get lat;
  @override
  double? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_AccessCopyWith<_$_Access> get copyWith =>
      throw _privateConstructorUsedError;
}
