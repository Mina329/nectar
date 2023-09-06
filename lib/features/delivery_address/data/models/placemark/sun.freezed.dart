// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sun.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sun _$SunFromJson(Map<String, dynamic> json) {
  return _Sun.fromJson(json);
}

/// @nodoc
mixin _$Sun {
  Rise? get rise => throw _privateConstructorUsedError;
  @JsonKey(name: 'set')
  Set? get sunSet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SunCopyWith<Sun> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SunCopyWith<$Res> {
  factory $SunCopyWith(Sun value, $Res Function(Sun) then) =
      _$SunCopyWithImpl<$Res, Sun>;
  @useResult
  $Res call({Rise? rise, @JsonKey(name: 'set') Set? sunSet});

  $RiseCopyWith<$Res>? get rise;
  $SetCopyWith<$Res>? get sunSet;
}

/// @nodoc
class _$SunCopyWithImpl<$Res, $Val extends Sun> implements $SunCopyWith<$Res> {
  _$SunCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rise = freezed,
    Object? sunSet = freezed,
  }) {
    return _then(_value.copyWith(
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as Rise?,
      sunSet: freezed == sunSet
          ? _value.sunSet
          : sunSet // ignore: cast_nullable_to_non_nullable
              as Set?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RiseCopyWith<$Res>? get rise {
    if (_value.rise == null) {
      return null;
    }

    return $RiseCopyWith<$Res>(_value.rise!, (value) {
      return _then(_value.copyWith(rise: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SetCopyWith<$Res>? get sunSet {
    if (_value.sunSet == null) {
      return null;
    }

    return $SetCopyWith<$Res>(_value.sunSet!, (value) {
      return _then(_value.copyWith(sunSet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SunCopyWith<$Res> implements $SunCopyWith<$Res> {
  factory _$$_SunCopyWith(_$_Sun value, $Res Function(_$_Sun) then) =
      __$$_SunCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Rise? rise, @JsonKey(name: 'set') Set? sunSet});

  @override
  $RiseCopyWith<$Res>? get rise;
  @override
  $SetCopyWith<$Res>? get sunSet;
}

/// @nodoc
class __$$_SunCopyWithImpl<$Res> extends _$SunCopyWithImpl<$Res, _$_Sun>
    implements _$$_SunCopyWith<$Res> {
  __$$_SunCopyWithImpl(_$_Sun _value, $Res Function(_$_Sun) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rise = freezed,
    Object? sunSet = freezed,
  }) {
    return _then(_$_Sun(
      rise: freezed == rise
          ? _value.rise
          : rise // ignore: cast_nullable_to_non_nullable
              as Rise?,
      sunSet: freezed == sunSet
          ? _value.sunSet
          : sunSet // ignore: cast_nullable_to_non_nullable
              as Set?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sun implements _Sun {
  _$_Sun({this.rise, @JsonKey(name: 'set') this.sunSet});

  factory _$_Sun.fromJson(Map<String, dynamic> json) => _$$_SunFromJson(json);

  @override
  final Rise? rise;
  @override
  @JsonKey(name: 'set')
  final Set? sunSet;

  @override
  String toString() {
    return 'Sun(rise: $rise, sunSet: $sunSet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sun &&
            (identical(other.rise, rise) || other.rise == rise) &&
            (identical(other.sunSet, sunSet) || other.sunSet == sunSet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rise, sunSet);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SunCopyWith<_$_Sun> get copyWith =>
      __$$_SunCopyWithImpl<_$_Sun>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SunToJson(
      this,
    );
  }
}

abstract class _Sun implements Sun {
  factory _Sun({final Rise? rise, @JsonKey(name: 'set') final Set? sunSet}) =
      _$_Sun;

  factory _Sun.fromJson(Map<String, dynamic> json) = _$_Sun.fromJson;

  @override
  Rise? get rise;
  @override
  @JsonKey(name: 'set')
  Set? get sunSet;
  @override
  @JsonKey(ignore: true)
  _$$_SunCopyWith<_$_Sun> get copyWith => throw _privateConstructorUsedError;
}
