// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bounds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Bounds _$BoundsFromJson(Map<String, dynamic> json) {
  return _Bounds.fromJson(json);
}

/// @nodoc
mixin _$Bounds {
  Northeast? get northeast => throw _privateConstructorUsedError;
  Southwest? get southwest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundsCopyWith<Bounds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundsCopyWith<$Res> {
  factory $BoundsCopyWith(Bounds value, $Res Function(Bounds) then) =
      _$BoundsCopyWithImpl<$Res, Bounds>;
  @useResult
  $Res call({Northeast? northeast, Southwest? southwest});

  $NortheastCopyWith<$Res>? get northeast;
  $SouthwestCopyWith<$Res>? get southwest;
}

/// @nodoc
class _$BoundsCopyWithImpl<$Res, $Val extends Bounds>
    implements $BoundsCopyWith<$Res> {
  _$BoundsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_value.copyWith(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as Northeast?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as Southwest?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NortheastCopyWith<$Res>? get northeast {
    if (_value.northeast == null) {
      return null;
    }

    return $NortheastCopyWith<$Res>(_value.northeast!, (value) {
      return _then(_value.copyWith(northeast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SouthwestCopyWith<$Res>? get southwest {
    if (_value.southwest == null) {
      return null;
    }

    return $SouthwestCopyWith<$Res>(_value.southwest!, (value) {
      return _then(_value.copyWith(southwest: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BoundsCopyWith<$Res> implements $BoundsCopyWith<$Res> {
  factory _$$_BoundsCopyWith(_$_Bounds value, $Res Function(_$_Bounds) then) =
      __$$_BoundsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Northeast? northeast, Southwest? southwest});

  @override
  $NortheastCopyWith<$Res>? get northeast;
  @override
  $SouthwestCopyWith<$Res>? get southwest;
}

/// @nodoc
class __$$_BoundsCopyWithImpl<$Res>
    extends _$BoundsCopyWithImpl<$Res, _$_Bounds>
    implements _$$_BoundsCopyWith<$Res> {
  __$$_BoundsCopyWithImpl(_$_Bounds _value, $Res Function(_$_Bounds) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? northeast = freezed,
    Object? southwest = freezed,
  }) {
    return _then(_$_Bounds(
      northeast: freezed == northeast
          ? _value.northeast
          : northeast // ignore: cast_nullable_to_non_nullable
              as Northeast?,
      southwest: freezed == southwest
          ? _value.southwest
          : southwest // ignore: cast_nullable_to_non_nullable
              as Southwest?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Bounds implements _Bounds {
  _$_Bounds({this.northeast, this.southwest});

  factory _$_Bounds.fromJson(Map<String, dynamic> json) =>
      _$$_BoundsFromJson(json);

  @override
  final Northeast? northeast;
  @override
  final Southwest? southwest;

  @override
  String toString() {
    return 'Bounds(northeast: $northeast, southwest: $southwest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Bounds &&
            (identical(other.northeast, northeast) ||
                other.northeast == northeast) &&
            (identical(other.southwest, southwest) ||
                other.southwest == southwest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, northeast, southwest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      __$$_BoundsCopyWithImpl<_$_Bounds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoundsToJson(
      this,
    );
  }
}

abstract class _Bounds implements Bounds {
  factory _Bounds({final Northeast? northeast, final Southwest? southwest}) =
      _$_Bounds;

  factory _Bounds.fromJson(Map<String, dynamic> json) = _$_Bounds.fromJson;

  @override
  Northeast? get northeast;
  @override
  Southwest? get southwest;
  @override
  @JsonKey(ignore: true)
  _$$_BoundsCopyWith<_$_Bounds> get copyWith =>
      throw _privateConstructorUsedError;
}
