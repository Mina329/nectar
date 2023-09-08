// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'un_m49.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnM49 _$UnM49FromJson(Map<String, dynamic> json) {
  return _UnM49.fromJson(json);
}

/// @nodoc
mixin _$UnM49 {
  Regions? get regions =>
      throw _privateConstructorUsedError; 
  @JsonKey(name: 'statistical_groupings')
  List<String>? get statisticalGroupings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnM49CopyWith<UnM49> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnM49CopyWith<$Res> {
  factory $UnM49CopyWith(UnM49 value, $Res Function(UnM49) then) =
      _$UnM49CopyWithImpl<$Res, UnM49>;
  @useResult
  $Res call(
      {Regions? regions,
      @JsonKey(name: 'statistical_groupings')
      List<String>? statisticalGroupings});

  $RegionsCopyWith<$Res>? get regions;
}

/// @nodoc
class _$UnM49CopyWithImpl<$Res, $Val extends UnM49>
    implements $UnM49CopyWith<$Res> {
  _$UnM49CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
    Object? statisticalGroupings = freezed,
  }) {
    return _then(_value.copyWith(
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as Regions?,
      statisticalGroupings: freezed == statisticalGroupings
          ? _value.statisticalGroupings
          : statisticalGroupings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegionsCopyWith<$Res>? get regions {
    if (_value.regions == null) {
      return null;
    }

    return $RegionsCopyWith<$Res>(_value.regions!, (value) {
      return _then(_value.copyWith(regions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UnM49CopyWith<$Res> implements $UnM49CopyWith<$Res> {
  factory _$$_UnM49CopyWith(_$_UnM49 value, $Res Function(_$_UnM49) then) =
      __$$_UnM49CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Regions? regions,
      @JsonKey(name: 'statistical_groupings')
      List<String>? statisticalGroupings});

  @override
  $RegionsCopyWith<$Res>? get regions;
}

/// @nodoc
class __$$_UnM49CopyWithImpl<$Res> extends _$UnM49CopyWithImpl<$Res, _$_UnM49>
    implements _$$_UnM49CopyWith<$Res> {
  __$$_UnM49CopyWithImpl(_$_UnM49 _value, $Res Function(_$_UnM49) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regions = freezed,
    Object? statisticalGroupings = freezed,
  }) {
    return _then(_$_UnM49(
      regions: freezed == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as Regions?,
      statisticalGroupings: freezed == statisticalGroupings
          ? _value._statisticalGroupings
          : statisticalGroupings // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnM49 implements _UnM49 {
  _$_UnM49(
      {this.regions,
      @JsonKey(name: 'statistical_groupings')
      final List<String>? statisticalGroupings})
      : _statisticalGroupings = statisticalGroupings;

  factory _$_UnM49.fromJson(Map<String, dynamic> json) =>
      _$$_UnM49FromJson(json);

  @override
  final Regions? regions;

  final List<String>? _statisticalGroupings;

  @override
  @JsonKey(name: 'statistical_groupings')
  List<String>? get statisticalGroupings {
    final value = _statisticalGroupings;
    if (value == null) return null;
    if (_statisticalGroupings is EqualUnmodifiableListView)
      return _statisticalGroupings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UnM49(regions: $regions, statisticalGroupings: $statisticalGroupings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnM49 &&
            (identical(other.regions, regions) || other.regions == regions) &&
            const DeepCollectionEquality()
                .equals(other._statisticalGroupings, _statisticalGroupings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, regions,
      const DeepCollectionEquality().hash(_statisticalGroupings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnM49CopyWith<_$_UnM49> get copyWith =>
      __$$_UnM49CopyWithImpl<_$_UnM49>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnM49ToJson(
      this,
    );
  }
}

abstract class _UnM49 implements UnM49 {
  factory _UnM49(
      {final Regions? regions,
      @JsonKey(name: 'statistical_groupings')
      final List<String>? statisticalGroupings}) = _$_UnM49;

  factory _UnM49.fromJson(Map<String, dynamic> json) = _$_UnM49.fromJson;

  @override
  Regions? get regions;
  @override 
  @JsonKey(name: 'statistical_groupings')
  List<String>? get statisticalGroupings;
  @override
  @JsonKey(ignore: true)
  _$$_UnM49CopyWith<_$_UnM49> get copyWith =>
      throw _privateConstructorUsedError;
}
