// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'regions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Regions _$RegionsFromJson(Map<String, dynamic> json) {
  return _Regions.fromJson(json);
}

/// @nodoc
mixin _$Regions {
  @JsonKey(name: 'AFRICA')
  String? get africa => throw _privateConstructorUsedError;
  @JsonKey(name: 'EG')
  String? get eg => throw _privateConstructorUsedError;
  @JsonKey(name: 'NORTHERN_AFRICA')
  String? get northernAfrica => throw _privateConstructorUsedError;
  @JsonKey(name: 'WORLD')
  String? get world => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegionsCopyWith<Regions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegionsCopyWith<$Res> {
  factory $RegionsCopyWith(Regions value, $Res Function(Regions) then) =
      _$RegionsCopyWithImpl<$Res, Regions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'AFRICA') String? africa,
      @JsonKey(name: 'EG') String? eg,
      @JsonKey(name: 'NORTHERN_AFRICA') String? northernAfrica,
      @JsonKey(name: 'WORLD') String? world});
}

/// @nodoc
class _$RegionsCopyWithImpl<$Res, $Val extends Regions>
    implements $RegionsCopyWith<$Res> {
  _$RegionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? africa = freezed,
    Object? eg = freezed,
    Object? northernAfrica = freezed,
    Object? world = freezed,
  }) {
    return _then(_value.copyWith(
      africa: freezed == africa
          ? _value.africa
          : africa // ignore: cast_nullable_to_non_nullable
              as String?,
      eg: freezed == eg
          ? _value.eg
          : eg // ignore: cast_nullable_to_non_nullable
              as String?,
      northernAfrica: freezed == northernAfrica
          ? _value.northernAfrica
          : northernAfrica // ignore: cast_nullable_to_non_nullable
              as String?,
      world: freezed == world
          ? _value.world
          : world // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegionsCopyWith<$Res> implements $RegionsCopyWith<$Res> {
  factory _$$_RegionsCopyWith(
          _$_Regions value, $Res Function(_$_Regions) then) =
      __$$_RegionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'AFRICA') String? africa,
      @JsonKey(name: 'EG') String? eg,
      @JsonKey(name: 'NORTHERN_AFRICA') String? northernAfrica,
      @JsonKey(name: 'WORLD') String? world});
}

/// @nodoc
class __$$_RegionsCopyWithImpl<$Res>
    extends _$RegionsCopyWithImpl<$Res, _$_Regions>
    implements _$$_RegionsCopyWith<$Res> {
  __$$_RegionsCopyWithImpl(_$_Regions _value, $Res Function(_$_Regions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? africa = freezed,
    Object? eg = freezed,
    Object? northernAfrica = freezed,
    Object? world = freezed,
  }) {
    return _then(_$_Regions(
      africa: freezed == africa
          ? _value.africa
          : africa // ignore: cast_nullable_to_non_nullable
              as String?,
      eg: freezed == eg
          ? _value.eg
          : eg // ignore: cast_nullable_to_non_nullable
              as String?,
      northernAfrica: freezed == northernAfrica
          ? _value.northernAfrica
          : northernAfrica // ignore: cast_nullable_to_non_nullable
              as String?,
      world: freezed == world
          ? _value.world
          : world // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Regions implements _Regions {
  _$_Regions(
      {@JsonKey(name: 'AFRICA') this.africa,
      @JsonKey(name: 'EG') this.eg,
      @JsonKey(name: 'NORTHERN_AFRICA') this.northernAfrica,
      @JsonKey(name: 'WORLD') this.world});

  factory _$_Regions.fromJson(Map<String, dynamic> json) =>
      _$$_RegionsFromJson(json);

  @override
  @JsonKey(name: 'AFRICA')
  final String? africa;
  @override
  @JsonKey(name: 'EG')
  final String? eg;
  @override
  @JsonKey(name: 'NORTHERN_AFRICA')
  final String? northernAfrica;
  @override
  @JsonKey(name: 'WORLD')
  final String? world;

  @override
  String toString() {
    return 'Regions(africa: $africa, eg: $eg, northernAfrica: $northernAfrica, world: $world)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Regions &&
            (identical(other.africa, africa) || other.africa == africa) &&
            (identical(other.eg, eg) || other.eg == eg) &&
            (identical(other.northernAfrica, northernAfrica) ||
                other.northernAfrica == northernAfrica) &&
            (identical(other.world, world) || other.world == world));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, africa, eg, northernAfrica, world);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegionsCopyWith<_$_Regions> get copyWith =>
      __$$_RegionsCopyWithImpl<_$_Regions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegionsToJson(
      this,
    );
  }
}

abstract class _Regions implements Regions {
  factory _Regions(
      {@JsonKey(name: 'AFRICA') final String? africa,
      @JsonKey(name: 'EG') final String? eg,
      @JsonKey(name: 'NORTHERN_AFRICA') final String? northernAfrica,
      @JsonKey(name: 'WORLD') final String? world}) = _$_Regions;

  factory _Regions.fromJson(Map<String, dynamic> json) = _$_Regions.fromJson;

  @override
  @JsonKey(name: 'AFRICA')
  String? get africa;
  @override
  @JsonKey(name: 'EG')
  String? get eg;
  @override
  @JsonKey(name: 'NORTHERN_AFRICA')
  String? get northernAfrica;
  @override
  @JsonKey(name: 'WORLD')
  String? get world;
  @override
  @JsonKey(ignore: true)
  _$$_RegionsCopyWith<_$_Regions> get copyWith =>
      throw _privateConstructorUsedError;
}
