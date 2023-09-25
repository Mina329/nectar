// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timezone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Timezone _$TimezoneFromJson(Map<String, dynamic> json) {
  return _Timezone.fromJson(json);
}

/// @nodoc
mixin _$Timezone {
  String? get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'now_in_dst')
  int? get nowInDst =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'offset_sec')
  int? get offsetSec =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'offset_string')
  String? get offsetString =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'short_name')
  String? get shortName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimezoneCopyWith<Timezone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimezoneCopyWith<$Res> {
  factory $TimezoneCopyWith(Timezone value, $Res Function(Timezone) then) =
      _$TimezoneCopyWithImpl<$Res, Timezone>;
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'now_in_dst') int? nowInDst,
      @JsonKey(name: 'offset_sec') int? offsetSec,
      @JsonKey(name: 'offset_string') String? offsetString,
      @JsonKey(name: 'short_name') String? shortName});
}

/// @nodoc
class _$TimezoneCopyWithImpl<$Res, $Val extends Timezone>
    implements $TimezoneCopyWith<$Res> {
  _$TimezoneCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? nowInDst = freezed,
    Object? offsetSec = freezed,
    Object? offsetString = freezed,
    Object? shortName = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nowInDst: freezed == nowInDst
          ? _value.nowInDst
          : nowInDst // ignore: cast_nullable_to_non_nullable
              as int?,
      offsetSec: freezed == offsetSec
          ? _value.offsetSec
          : offsetSec // ignore: cast_nullable_to_non_nullable
              as int?,
      offsetString: freezed == offsetString
          ? _value.offsetString
          : offsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimezoneCopyWith<$Res> implements $TimezoneCopyWith<$Res> {
  factory _$$_TimezoneCopyWith(
          _$_Timezone value, $Res Function(_$_Timezone) then) =
      __$$_TimezoneCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      @JsonKey(name: 'now_in_dst') int? nowInDst,
      @JsonKey(name: 'offset_sec') int? offsetSec,
      @JsonKey(name: 'offset_string') String? offsetString,
      @JsonKey(name: 'short_name') String? shortName});
}

/// @nodoc
class __$$_TimezoneCopyWithImpl<$Res>
    extends _$TimezoneCopyWithImpl<$Res, _$_Timezone>
    implements _$$_TimezoneCopyWith<$Res> {
  __$$_TimezoneCopyWithImpl(
      _$_Timezone _value, $Res Function(_$_Timezone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? nowInDst = freezed,
    Object? offsetSec = freezed,
    Object? offsetString = freezed,
    Object? shortName = freezed,
  }) {
    return _then(_$_Timezone(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nowInDst: freezed == nowInDst
          ? _value.nowInDst
          : nowInDst // ignore: cast_nullable_to_non_nullable
              as int?,
      offsetSec: freezed == offsetSec
          ? _value.offsetSec
          : offsetSec // ignore: cast_nullable_to_non_nullable
              as int?,
      offsetString: freezed == offsetString
          ? _value.offsetString
          : offsetString // ignore: cast_nullable_to_non_nullable
              as String?,
      shortName: freezed == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timezone implements _Timezone {
  _$_Timezone(
      {this.name,
      @JsonKey(name: 'now_in_dst') this.nowInDst,
      @JsonKey(name: 'offset_sec') this.offsetSec,
      @JsonKey(name: 'offset_string') this.offsetString,
      @JsonKey(name: 'short_name') this.shortName});

  factory _$_Timezone.fromJson(Map<String, dynamic> json) =>
      _$$_TimezoneFromJson(json);

  @override
  final String? name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'now_in_dst')
  final int? nowInDst;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'offset_sec')
  final int? offsetSec;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'offset_string')
  final String? offsetString;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'short_name')
  final String? shortName;

  @override
  String toString() {
    return 'Timezone(name: $name, nowInDst: $nowInDst, offsetSec: $offsetSec, offsetString: $offsetString, shortName: $shortName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timezone &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nowInDst, nowInDst) ||
                other.nowInDst == nowInDst) &&
            (identical(other.offsetSec, offsetSec) ||
                other.offsetSec == offsetSec) &&
            (identical(other.offsetString, offsetString) ||
                other.offsetString == offsetString) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, nowInDst, offsetSec, offsetString, shortName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimezoneCopyWith<_$_Timezone> get copyWith =>
      __$$_TimezoneCopyWithImpl<_$_Timezone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimezoneToJson(
      this,
    );
  }
}

abstract class _Timezone implements Timezone {
  factory _Timezone(
      {final String? name,
      @JsonKey(name: 'now_in_dst') final int? nowInDst,
      @JsonKey(name: 'offset_sec') final int? offsetSec,
      @JsonKey(name: 'offset_string') final String? offsetString,
      @JsonKey(name: 'short_name') final String? shortName}) = _$_Timezone;

  factory _Timezone.fromJson(Map<String, dynamic> json) = _$_Timezone.fromJson;

  @override
  String? get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'now_in_dst')
  int? get nowInDst;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'offset_sec')
  int? get offsetSec;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'offset_string')
  String? get offsetString;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'short_name')
  String? get shortName;
  @override
  @JsonKey(ignore: true)
  _$$_TimezoneCopyWith<_$_Timezone> get copyWith =>
      throw _privateConstructorUsedError;
}
