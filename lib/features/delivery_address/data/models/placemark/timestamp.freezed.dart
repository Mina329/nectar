// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timestamp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Timestamp _$TimestampFromJson(Map<String, dynamic> json) {
  return _Timestamp.fromJson(json);
}

/// @nodoc
mixin _$Timestamp {
  @JsonKey(name: 'created_http')
  String? get createdHttp => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_unix')
  int? get createdUnix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimestampCopyWith<Timestamp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimestampCopyWith<$Res> {
  factory $TimestampCopyWith(Timestamp value, $Res Function(Timestamp) then) =
      _$TimestampCopyWithImpl<$Res, Timestamp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_http') String? createdHttp,
      @JsonKey(name: 'created_unix') int? createdUnix});
}

/// @nodoc
class _$TimestampCopyWithImpl<$Res, $Val extends Timestamp>
    implements $TimestampCopyWith<$Res> {
  _$TimestampCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdHttp = freezed,
    Object? createdUnix = freezed,
  }) {
    return _then(_value.copyWith(
      createdHttp: freezed == createdHttp
          ? _value.createdHttp
          : createdHttp // ignore: cast_nullable_to_non_nullable
              as String?,
      createdUnix: freezed == createdUnix
          ? _value.createdUnix
          : createdUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimestampCopyWith<$Res> implements $TimestampCopyWith<$Res> {
  factory _$$_TimestampCopyWith(
          _$_Timestamp value, $Res Function(_$_Timestamp) then) =
      __$$_TimestampCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_http') String? createdHttp,
      @JsonKey(name: 'created_unix') int? createdUnix});
}

/// @nodoc
class __$$_TimestampCopyWithImpl<$Res>
    extends _$TimestampCopyWithImpl<$Res, _$_Timestamp>
    implements _$$_TimestampCopyWith<$Res> {
  __$$_TimestampCopyWithImpl(
      _$_Timestamp _value, $Res Function(_$_Timestamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdHttp = freezed,
    Object? createdUnix = freezed,
  }) {
    return _then(_$_Timestamp(
      createdHttp: freezed == createdHttp
          ? _value.createdHttp
          : createdHttp // ignore: cast_nullable_to_non_nullable
              as String?,
      createdUnix: freezed == createdUnix
          ? _value.createdUnix
          : createdUnix // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timestamp implements _Timestamp {
  _$_Timestamp(
      {@JsonKey(name: 'created_http') this.createdHttp,
      @JsonKey(name: 'created_unix') this.createdUnix});

  factory _$_Timestamp.fromJson(Map<String, dynamic> json) =>
      _$$_TimestampFromJson(json);

  @override
  @JsonKey(name: 'created_http')
  final String? createdHttp;
  @override
  @JsonKey(name: 'created_unix')
  final int? createdUnix;

  @override
  String toString() {
    return 'Timestamp(createdHttp: $createdHttp, createdUnix: $createdUnix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timestamp &&
            (identical(other.createdHttp, createdHttp) ||
                other.createdHttp == createdHttp) &&
            (identical(other.createdUnix, createdUnix) ||
                other.createdUnix == createdUnix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdHttp, createdUnix);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimestampCopyWith<_$_Timestamp> get copyWith =>
      __$$_TimestampCopyWithImpl<_$_Timestamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimestampToJson(
      this,
    );
  }
}

abstract class _Timestamp implements Timestamp {
  factory _Timestamp(
      {@JsonKey(name: 'created_http') final String? createdHttp,
      @JsonKey(name: 'created_unix') final int? createdUnix}) = _$_Timestamp;

  factory _Timestamp.fromJson(Map<String, dynamic> json) =
      _$_Timestamp.fromJson;

  @override
  @JsonKey(name: 'created_http')
  String? get createdHttp;
  @override
  @JsonKey(name: 'created_unix')
  int? get createdUnix;
  @override
  @JsonKey(ignore: true)
  _$$_TimestampCopyWith<_$_Timestamp> get copyWith =>
      throw _privateConstructorUsedError;
}
