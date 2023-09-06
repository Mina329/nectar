// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rise _$RiseFromJson(Map<String, dynamic> json) {
  return _Rise.fromJson(json);
}

/// @nodoc
mixin _$Rise {
  int? get apparent => throw _privateConstructorUsedError;
  int? get astronomical => throw _privateConstructorUsedError;
  int? get civil => throw _privateConstructorUsedError;
  int? get nautical => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RiseCopyWith<Rise> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RiseCopyWith<$Res> {
  factory $RiseCopyWith(Rise value, $Res Function(Rise) then) =
      _$RiseCopyWithImpl<$Res, Rise>;
  @useResult
  $Res call({int? apparent, int? astronomical, int? civil, int? nautical});
}

/// @nodoc
class _$RiseCopyWithImpl<$Res, $Val extends Rise>
    implements $RiseCopyWith<$Res> {
  _$RiseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apparent = freezed,
    Object? astronomical = freezed,
    Object? civil = freezed,
    Object? nautical = freezed,
  }) {
    return _then(_value.copyWith(
      apparent: freezed == apparent
          ? _value.apparent
          : apparent // ignore: cast_nullable_to_non_nullable
              as int?,
      astronomical: freezed == astronomical
          ? _value.astronomical
          : astronomical // ignore: cast_nullable_to_non_nullable
              as int?,
      civil: freezed == civil
          ? _value.civil
          : civil // ignore: cast_nullable_to_non_nullable
              as int?,
      nautical: freezed == nautical
          ? _value.nautical
          : nautical // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RiseCopyWith<$Res> implements $RiseCopyWith<$Res> {
  factory _$$_RiseCopyWith(_$_Rise value, $Res Function(_$_Rise) then) =
      __$$_RiseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? apparent, int? astronomical, int? civil, int? nautical});
}

/// @nodoc
class __$$_RiseCopyWithImpl<$Res> extends _$RiseCopyWithImpl<$Res, _$_Rise>
    implements _$$_RiseCopyWith<$Res> {
  __$$_RiseCopyWithImpl(_$_Rise _value, $Res Function(_$_Rise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apparent = freezed,
    Object? astronomical = freezed,
    Object? civil = freezed,
    Object? nautical = freezed,
  }) {
    return _then(_$_Rise(
      apparent: freezed == apparent
          ? _value.apparent
          : apparent // ignore: cast_nullable_to_non_nullable
              as int?,
      astronomical: freezed == astronomical
          ? _value.astronomical
          : astronomical // ignore: cast_nullable_to_non_nullable
              as int?,
      civil: freezed == civil
          ? _value.civil
          : civil // ignore: cast_nullable_to_non_nullable
              as int?,
      nautical: freezed == nautical
          ? _value.nautical
          : nautical // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rise implements _Rise {
  _$_Rise({this.apparent, this.astronomical, this.civil, this.nautical});

  factory _$_Rise.fromJson(Map<String, dynamic> json) => _$$_RiseFromJson(json);

  @override
  final int? apparent;
  @override
  final int? astronomical;
  @override
  final int? civil;
  @override
  final int? nautical;

  @override
  String toString() {
    return 'Rise(apparent: $apparent, astronomical: $astronomical, civil: $civil, nautical: $nautical)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rise &&
            (identical(other.apparent, apparent) ||
                other.apparent == apparent) &&
            (identical(other.astronomical, astronomical) ||
                other.astronomical == astronomical) &&
            (identical(other.civil, civil) || other.civil == civil) &&
            (identical(other.nautical, nautical) ||
                other.nautical == nautical));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, apparent, astronomical, civil, nautical);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RiseCopyWith<_$_Rise> get copyWith =>
      __$$_RiseCopyWithImpl<_$_Rise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RiseToJson(
      this,
    );
  }
}

abstract class _Rise implements Rise {
  factory _Rise(
      {final int? apparent,
      final int? astronomical,
      final int? civil,
      final int? nautical}) = _$_Rise;

  factory _Rise.fromJson(Map<String, dynamic> json) = _$_Rise.fromJson;

  @override
  int? get apparent;
  @override
  int? get astronomical;
  @override
  int? get civil;
  @override
  int? get nautical;
  @override
  @JsonKey(ignore: true)
  _$$_RiseCopyWith<_$_Rise> get copyWith => throw _privateConstructorUsedError;
}
