// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  Annotations? get annotations => throw _privateConstructorUsedError;
  Bounds? get bounds => throw _privateConstructorUsedError;
  Components? get components => throw _privateConstructorUsedError;
  int? get confidence => throw _privateConstructorUsedError;
  String? get formatted => throw _privateConstructorUsedError;
  Geometry? get geometry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {Annotations? annotations,
      Bounds? bounds,
      Components? components,
      int? confidence,
      String? formatted,
      Geometry? geometry});

  $AnnotationsCopyWith<$Res>? get annotations;
  $BoundsCopyWith<$Res>? get bounds;
  $ComponentsCopyWith<$Res>? get components;
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotations = freezed,
    Object? bounds = freezed,
    Object? components = freezed,
    Object? confidence = freezed,
    Object? formatted = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_value.copyWith(
      annotations: freezed == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnotationsCopyWith<$Res>? get annotations {
    if (_value.annotations == null) {
      return null;
    }

    return $AnnotationsCopyWith<$Res>(_value.annotations!, (value) {
      return _then(_value.copyWith(annotations: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoundsCopyWith<$Res>? get bounds {
    if (_value.bounds == null) {
      return null;
    }

    return $BoundsCopyWith<$Res>(_value.bounds!, (value) {
      return _then(_value.copyWith(bounds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ComponentsCopyWith<$Res>? get components {
    if (_value.components == null) {
      return null;
    }

    return $ComponentsCopyWith<$Res>(_value.components!, (value) {
      return _then(_value.copyWith(components: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeometryCopyWith<$Res>? get geometry {
    if (_value.geometry == null) {
      return null;
    }

    return $GeometryCopyWith<$Res>(_value.geometry!, (value) {
      return _then(_value.copyWith(geometry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Annotations? annotations,
      Bounds? bounds,
      Components? components,
      int? confidence,
      String? formatted,
      Geometry? geometry});

  @override
  $AnnotationsCopyWith<$Res>? get annotations;
  @override
  $BoundsCopyWith<$Res>? get bounds;
  @override
  $ComponentsCopyWith<$Res>? get components;
  @override
  $GeometryCopyWith<$Res>? get geometry;
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotations = freezed,
    Object? bounds = freezed,
    Object? components = freezed,
    Object? confidence = freezed,
    Object? formatted = freezed,
    Object? geometry = freezed,
  }) {
    return _then(_$_Result(
      annotations: freezed == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as Annotations?,
      bounds: freezed == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as Bounds?,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as Components?,
      confidence: freezed == confidence
          ? _value.confidence
          : confidence // ignore: cast_nullable_to_non_nullable
              as int?,
      formatted: freezed == formatted
          ? _value.formatted
          : formatted // ignore: cast_nullable_to_non_nullable
              as String?,
      geometry: freezed == geometry
          ? _value.geometry
          : geometry // ignore: cast_nullable_to_non_nullable
              as Geometry?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  _$_Result(
      {this.annotations,
      this.bounds,
      this.components,
      this.confidence,
      this.formatted,
      this.geometry});

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  @override
  final Annotations? annotations;
  @override
  final Bounds? bounds;
  @override
  final Components? components;
  @override
  final int? confidence;
  @override
  final String? formatted;
  @override
  final Geometry? geometry;

  @override
  String toString() {
    return 'Result(annotations: $annotations, bounds: $bounds, components: $components, confidence: $confidence, formatted: $formatted, geometry: $geometry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            (identical(other.annotations, annotations) ||
                other.annotations == annotations) &&
            (identical(other.bounds, bounds) || other.bounds == bounds) &&
            (identical(other.components, components) ||
                other.components == components) &&
            (identical(other.confidence, confidence) ||
                other.confidence == confidence) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted) &&
            (identical(other.geometry, geometry) ||
                other.geometry == geometry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, annotations, bounds, components,
      confidence, formatted, geometry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  factory _Result(
      {final Annotations? annotations,
      final Bounds? bounds,
      final Components? components,
      final int? confidence,
      final String? formatted,
      final Geometry? geometry}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  Annotations? get annotations;
  @override
  Bounds? get bounds;
  @override
  Components? get components;
  @override
  int? get confidence;
  @override
  String? get formatted;
  @override
  Geometry? get geometry;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
