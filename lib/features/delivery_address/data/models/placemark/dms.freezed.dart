// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Dms _$DmsFromJson(Map<String, dynamic> json) {
  return _Dms.fromJson(json);
}

/// @nodoc
mixin _$Dms {
  String? get lat => throw _privateConstructorUsedError;
  String? get lng => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DmsCopyWith<Dms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DmsCopyWith<$Res> {
  factory $DmsCopyWith(Dms value, $Res Function(Dms) then) =
      _$DmsCopyWithImpl<$Res, Dms>;
  @useResult
  $Res call({String? lat, String? lng});
}

/// @nodoc
class _$DmsCopyWithImpl<$Res, $Val extends Dms> implements $DmsCopyWith<$Res> {
  _$DmsCopyWithImpl(this._value, this._then);

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
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DmsCopyWith<$Res> implements $DmsCopyWith<$Res> {
  factory _$$_DmsCopyWith(_$_Dms value, $Res Function(_$_Dms) then) =
      __$$_DmsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? lat, String? lng});
}

/// @nodoc
class __$$_DmsCopyWithImpl<$Res> extends _$DmsCopyWithImpl<$Res, _$_Dms>
    implements _$$_DmsCopyWith<$Res> {
  __$$_DmsCopyWithImpl(_$_Dms _value, $Res Function(_$_Dms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lng = freezed,
  }) {
    return _then(_$_Dms(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String?,
      lng: freezed == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dms implements _Dms {
  _$_Dms({this.lat, this.lng});

  factory _$_Dms.fromJson(Map<String, dynamic> json) => _$$_DmsFromJson(json);

  @override
  final String? lat;
  @override
  final String? lng;

  @override
  String toString() {
    return 'Dms(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Dms &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DmsCopyWith<_$_Dms> get copyWith =>
      __$$_DmsCopyWithImpl<_$_Dms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DmsToJson(
      this,
    );
  }
}

abstract class _Dms implements Dms {
  factory _Dms({final String? lat, final String? lng}) = _$_Dms;

  factory _Dms.fromJson(Map<String, dynamic> json) = _$_Dms.fromJson;

  @override
  String? get lat;
  @override
  String? get lng;
  @override
  @JsonKey(ignore: true)
  _$$_DmsCopyWith<_$_Dms> get copyWith => throw _privateConstructorUsedError;
}
