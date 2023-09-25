// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roadinfo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Roadinfo _$RoadinfoFromJson(Map<String, dynamic> json) {
  return _Roadinfo.fromJson(json);
}

/// @nodoc
mixin _$Roadinfo {
// ignore: invalid_annotation_target
  @JsonKey(name: 'drive_on')
  String? get driveOn => throw _privateConstructorUsedError;
  String? get road =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'speed_in')
  String? get speedIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoadinfoCopyWith<Roadinfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoadinfoCopyWith<$Res> {
  factory $RoadinfoCopyWith(Roadinfo value, $Res Function(Roadinfo) then) =
      _$RoadinfoCopyWithImpl<$Res, Roadinfo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'drive_on') String? driveOn,
      String? road,
      @JsonKey(name: 'speed_in') String? speedIn});
}

/// @nodoc
class _$RoadinfoCopyWithImpl<$Res, $Val extends Roadinfo>
    implements $RoadinfoCopyWith<$Res> {
  _$RoadinfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driveOn = freezed,
    Object? road = freezed,
    Object? speedIn = freezed,
  }) {
    return _then(_value.copyWith(
      driveOn: freezed == driveOn
          ? _value.driveOn
          : driveOn // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      speedIn: freezed == speedIn
          ? _value.speedIn
          : speedIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RoadinfoCopyWith<$Res> implements $RoadinfoCopyWith<$Res> {
  factory _$$_RoadinfoCopyWith(
          _$_Roadinfo value, $Res Function(_$_Roadinfo) then) =
      __$$_RoadinfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'drive_on') String? driveOn,
      String? road,
      @JsonKey(name: 'speed_in') String? speedIn});
}

/// @nodoc
class __$$_RoadinfoCopyWithImpl<$Res>
    extends _$RoadinfoCopyWithImpl<$Res, _$_Roadinfo>
    implements _$$_RoadinfoCopyWith<$Res> {
  __$$_RoadinfoCopyWithImpl(
      _$_Roadinfo _value, $Res Function(_$_Roadinfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driveOn = freezed,
    Object? road = freezed,
    Object? speedIn = freezed,
  }) {
    return _then(_$_Roadinfo(
      driveOn: freezed == driveOn
          ? _value.driveOn
          : driveOn // ignore: cast_nullable_to_non_nullable
              as String?,
      road: freezed == road
          ? _value.road
          : road // ignore: cast_nullable_to_non_nullable
              as String?,
      speedIn: freezed == speedIn
          ? _value.speedIn
          : speedIn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Roadinfo implements _Roadinfo {
  _$_Roadinfo(
      {@JsonKey(name: 'drive_on') this.driveOn,
      this.road,
      @JsonKey(name: 'speed_in') this.speedIn});

  factory _$_Roadinfo.fromJson(Map<String, dynamic> json) =>
      _$$_RoadinfoFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'drive_on')
  final String? driveOn;
  @override
  final String? road;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'speed_in')
  final String? speedIn;

  @override
  String toString() {
    return 'Roadinfo(driveOn: $driveOn, road: $road, speedIn: $speedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Roadinfo &&
            (identical(other.driveOn, driveOn) || other.driveOn == driveOn) &&
            (identical(other.road, road) || other.road == road) &&
            (identical(other.speedIn, speedIn) || other.speedIn == speedIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, driveOn, road, speedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RoadinfoCopyWith<_$_Roadinfo> get copyWith =>
      __$$_RoadinfoCopyWithImpl<_$_Roadinfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RoadinfoToJson(
      this,
    );
  }
}

abstract class _Roadinfo implements Roadinfo {
  factory _Roadinfo(
      {@JsonKey(name: 'drive_on') final String? driveOn,
      final String? road,
      @JsonKey(name: 'speed_in') final String? speedIn}) = _$_Roadinfo;

  factory _Roadinfo.fromJson(Map<String, dynamic> json) = _$_Roadinfo.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'drive_on')
  String? get driveOn;
  @override
  String? get road;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'speed_in')
  String? get speedIn;
  @override
  @JsonKey(ignore: true)
  _$$_RoadinfoCopyWith<_$_Roadinfo> get copyWith =>
      throw _privateConstructorUsedError;
}
