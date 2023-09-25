// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Annotations _$AnnotationsFromJson(Map<String, dynamic> json) {
  return _Annotations.fromJson(json);
}

/// @nodoc
mixin _$Annotations {
// ignore: invalid_annotation_target
  @JsonKey(name: 'DMS')
  Dms? get dms =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'MGRS')
  String? get mgrs =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'Maidenhead')
  String? get maidenhead =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'Mercator')
  Mercator? get mercator =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'OSM')
  Osm? get osm =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'UN_M49')
  UnM49? get unM49 => throw _privateConstructorUsedError;
  int? get callingcode => throw _privateConstructorUsedError;
  Currency? get currency => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;
  String? get geohash => throw _privateConstructorUsedError;
  double? get qibla => throw _privateConstructorUsedError;
  Roadinfo? get roadinfo => throw _privateConstructorUsedError;
  Sun? get sun => throw _privateConstructorUsedError;
  Timezone? get timezone => throw _privateConstructorUsedError;
  What3words? get what3words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnotationsCopyWith<Annotations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationsCopyWith<$Res> {
  factory $AnnotationsCopyWith(
          Annotations value, $Res Function(Annotations) then) =
      _$AnnotationsCopyWithImpl<$Res, Annotations>;
  @useResult
  $Res call(
      {@JsonKey(name: 'DMS') Dms? dms,
      @JsonKey(name: 'MGRS') String? mgrs,
      @JsonKey(name: 'Maidenhead') String? maidenhead,
      @JsonKey(name: 'Mercator') Mercator? mercator,
      @JsonKey(name: 'OSM') Osm? osm,
      @JsonKey(name: 'UN_M49') UnM49? unM49,
      int? callingcode,
      Currency? currency,
      String? flag,
      String? geohash,
      double? qibla,
      Roadinfo? roadinfo,
      Sun? sun,
      Timezone? timezone,
      What3words? what3words});

  $DmsCopyWith<$Res>? get dms;
  $MercatorCopyWith<$Res>? get mercator;
  $OsmCopyWith<$Res>? get osm;
  $UnM49CopyWith<$Res>? get unM49;
  $CurrencyCopyWith<$Res>? get currency;
  $RoadinfoCopyWith<$Res>? get roadinfo;
  $SunCopyWith<$Res>? get sun;
  $TimezoneCopyWith<$Res>? get timezone;
  $What3wordsCopyWith<$Res>? get what3words;
}

/// @nodoc
class _$AnnotationsCopyWithImpl<$Res, $Val extends Annotations>
    implements $AnnotationsCopyWith<$Res> {
  _$AnnotationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dms = freezed,
    Object? mgrs = freezed,
    Object? maidenhead = freezed,
    Object? mercator = freezed,
    Object? osm = freezed,
    Object? unM49 = freezed,
    Object? callingcode = freezed,
    Object? currency = freezed,
    Object? flag = freezed,
    Object? geohash = freezed,
    Object? qibla = freezed,
    Object? roadinfo = freezed,
    Object? sun = freezed,
    Object? timezone = freezed,
    Object? what3words = freezed,
  }) {
    return _then(_value.copyWith(
      dms: freezed == dms
          ? _value.dms
          : dms // ignore: cast_nullable_to_non_nullable
              as Dms?,
      mgrs: freezed == mgrs
          ? _value.mgrs
          : mgrs // ignore: cast_nullable_to_non_nullable
              as String?,
      maidenhead: freezed == maidenhead
          ? _value.maidenhead
          : maidenhead // ignore: cast_nullable_to_non_nullable
              as String?,
      mercator: freezed == mercator
          ? _value.mercator
          : mercator // ignore: cast_nullable_to_non_nullable
              as Mercator?,
      osm: freezed == osm
          ? _value.osm
          : osm // ignore: cast_nullable_to_non_nullable
              as Osm?,
      unM49: freezed == unM49
          ? _value.unM49
          : unM49 // ignore: cast_nullable_to_non_nullable
              as UnM49?,
      callingcode: freezed == callingcode
          ? _value.callingcode
          : callingcode // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      geohash: freezed == geohash
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String?,
      qibla: freezed == qibla
          ? _value.qibla
          : qibla // ignore: cast_nullable_to_non_nullable
              as double?,
      roadinfo: freezed == roadinfo
          ? _value.roadinfo
          : roadinfo // ignore: cast_nullable_to_non_nullable
              as Roadinfo?,
      sun: freezed == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as Sun?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as Timezone?,
      what3words: freezed == what3words
          ? _value.what3words
          : what3words // ignore: cast_nullable_to_non_nullable
              as What3words?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DmsCopyWith<$Res>? get dms {
    if (_value.dms == null) {
      return null;
    }

    return $DmsCopyWith<$Res>(_value.dms!, (value) {
      return _then(_value.copyWith(dms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MercatorCopyWith<$Res>? get mercator {
    if (_value.mercator == null) {
      return null;
    }

    return $MercatorCopyWith<$Res>(_value.mercator!, (value) {
      return _then(_value.copyWith(mercator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OsmCopyWith<$Res>? get osm {
    if (_value.osm == null) {
      return null;
    }

    return $OsmCopyWith<$Res>(_value.osm!, (value) {
      return _then(_value.copyWith(osm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnM49CopyWith<$Res>? get unM49 {
    if (_value.unM49 == null) {
      return null;
    }

    return $UnM49CopyWith<$Res>(_value.unM49!, (value) {
      return _then(_value.copyWith(unM49: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res>? get currency {
    if (_value.currency == null) {
      return null;
    }

    return $CurrencyCopyWith<$Res>(_value.currency!, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RoadinfoCopyWith<$Res>? get roadinfo {
    if (_value.roadinfo == null) {
      return null;
    }

    return $RoadinfoCopyWith<$Res>(_value.roadinfo!, (value) {
      return _then(_value.copyWith(roadinfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SunCopyWith<$Res>? get sun {
    if (_value.sun == null) {
      return null;
    }

    return $SunCopyWith<$Res>(_value.sun!, (value) {
      return _then(_value.copyWith(sun: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimezoneCopyWith<$Res>? get timezone {
    if (_value.timezone == null) {
      return null;
    }

    return $TimezoneCopyWith<$Res>(_value.timezone!, (value) {
      return _then(_value.copyWith(timezone: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $What3wordsCopyWith<$Res>? get what3words {
    if (_value.what3words == null) {
      return null;
    }

    return $What3wordsCopyWith<$Res>(_value.what3words!, (value) {
      return _then(_value.copyWith(what3words: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnnotationsCopyWith<$Res>
    implements $AnnotationsCopyWith<$Res> {
  factory _$$_AnnotationsCopyWith(
          _$_Annotations value, $Res Function(_$_Annotations) then) =
      __$$_AnnotationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'DMS') Dms? dms,
      @JsonKey(name: 'MGRS') String? mgrs,
      @JsonKey(name: 'Maidenhead') String? maidenhead,
      @JsonKey(name: 'Mercator') Mercator? mercator,
      @JsonKey(name: 'OSM') Osm? osm,
      @JsonKey(name: 'UN_M49') UnM49? unM49,
      int? callingcode,
      Currency? currency,
      String? flag,
      String? geohash,
      double? qibla,
      Roadinfo? roadinfo,
      Sun? sun,
      Timezone? timezone,
      What3words? what3words});

  @override
  $DmsCopyWith<$Res>? get dms;
  @override
  $MercatorCopyWith<$Res>? get mercator;
  @override
  $OsmCopyWith<$Res>? get osm;
  @override
  $UnM49CopyWith<$Res>? get unM49;
  @override
  $CurrencyCopyWith<$Res>? get currency;
  @override
  $RoadinfoCopyWith<$Res>? get roadinfo;
  @override
  $SunCopyWith<$Res>? get sun;
  @override
  $TimezoneCopyWith<$Res>? get timezone;
  @override
  $What3wordsCopyWith<$Res>? get what3words;
}

/// @nodoc
class __$$_AnnotationsCopyWithImpl<$Res>
    extends _$AnnotationsCopyWithImpl<$Res, _$_Annotations>
    implements _$$_AnnotationsCopyWith<$Res> {
  __$$_AnnotationsCopyWithImpl(
      _$_Annotations _value, $Res Function(_$_Annotations) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dms = freezed,
    Object? mgrs = freezed,
    Object? maidenhead = freezed,
    Object? mercator = freezed,
    Object? osm = freezed,
    Object? unM49 = freezed,
    Object? callingcode = freezed,
    Object? currency = freezed,
    Object? flag = freezed,
    Object? geohash = freezed,
    Object? qibla = freezed,
    Object? roadinfo = freezed,
    Object? sun = freezed,
    Object? timezone = freezed,
    Object? what3words = freezed,
  }) {
    return _then(_$_Annotations(
      dms: freezed == dms
          ? _value.dms
          : dms // ignore: cast_nullable_to_non_nullable
              as Dms?,
      mgrs: freezed == mgrs
          ? _value.mgrs
          : mgrs // ignore: cast_nullable_to_non_nullable
              as String?,
      maidenhead: freezed == maidenhead
          ? _value.maidenhead
          : maidenhead // ignore: cast_nullable_to_non_nullable
              as String?,
      mercator: freezed == mercator
          ? _value.mercator
          : mercator // ignore: cast_nullable_to_non_nullable
              as Mercator?,
      osm: freezed == osm
          ? _value.osm
          : osm // ignore: cast_nullable_to_non_nullable
              as Osm?,
      unM49: freezed == unM49
          ? _value.unM49
          : unM49 // ignore: cast_nullable_to_non_nullable
              as UnM49?,
      callingcode: freezed == callingcode
          ? _value.callingcode
          : callingcode // ignore: cast_nullable_to_non_nullable
              as int?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
      geohash: freezed == geohash
          ? _value.geohash
          : geohash // ignore: cast_nullable_to_non_nullable
              as String?,
      qibla: freezed == qibla
          ? _value.qibla
          : qibla // ignore: cast_nullable_to_non_nullable
              as double?,
      roadinfo: freezed == roadinfo
          ? _value.roadinfo
          : roadinfo // ignore: cast_nullable_to_non_nullable
              as Roadinfo?,
      sun: freezed == sun
          ? _value.sun
          : sun // ignore: cast_nullable_to_non_nullable
              as Sun?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as Timezone?,
      what3words: freezed == what3words
          ? _value.what3words
          : what3words // ignore: cast_nullable_to_non_nullable
              as What3words?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Annotations implements _Annotations {
  _$_Annotations(
      {@JsonKey(name: 'DMS') this.dms,
      @JsonKey(name: 'MGRS') this.mgrs,
      @JsonKey(name: 'Maidenhead') this.maidenhead,
      @JsonKey(name: 'Mercator') this.mercator,
      @JsonKey(name: 'OSM') this.osm,
      @JsonKey(name: 'UN_M49') this.unM49,
      this.callingcode,
      this.currency,
      this.flag,
      this.geohash,
      this.qibla,
      this.roadinfo,
      this.sun,
      this.timezone,
      this.what3words});

  factory _$_Annotations.fromJson(Map<String, dynamic> json) =>
      _$$_AnnotationsFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'DMS')
  final Dms? dms;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'MGRS')
  final String? mgrs;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'Maidenhead')
  final String? maidenhead;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'Mercator')
  final Mercator? mercator;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'OSM')
  final Osm? osm;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'UN_M49')
  final UnM49? unM49;
  @override
  final int? callingcode;
  @override
  final Currency? currency;
  @override
  final String? flag;
  @override
  final String? geohash;
  @override
  final double? qibla;
  @override
  final Roadinfo? roadinfo;
  @override
  final Sun? sun;
  @override
  final Timezone? timezone;
  @override
  final What3words? what3words;

  @override
  String toString() {
    return 'Annotations(dms: $dms, mgrs: $mgrs, maidenhead: $maidenhead, mercator: $mercator, osm: $osm, unM49: $unM49, callingcode: $callingcode, currency: $currency, flag: $flag, geohash: $geohash, qibla: $qibla, roadinfo: $roadinfo, sun: $sun, timezone: $timezone, what3words: $what3words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Annotations &&
            (identical(other.dms, dms) || other.dms == dms) &&
            (identical(other.mgrs, mgrs) || other.mgrs == mgrs) &&
            (identical(other.maidenhead, maidenhead) ||
                other.maidenhead == maidenhead) &&
            (identical(other.mercator, mercator) ||
                other.mercator == mercator) &&
            (identical(other.osm, osm) || other.osm == osm) &&
            (identical(other.unM49, unM49) || other.unM49 == unM49) &&
            (identical(other.callingcode, callingcode) ||
                other.callingcode == callingcode) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.flag, flag) || other.flag == flag) &&
            (identical(other.geohash, geohash) || other.geohash == geohash) &&
            (identical(other.qibla, qibla) || other.qibla == qibla) &&
            (identical(other.roadinfo, roadinfo) ||
                other.roadinfo == roadinfo) &&
            (identical(other.sun, sun) || other.sun == sun) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.what3words, what3words) ||
                other.what3words == what3words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dms,
      mgrs,
      maidenhead,
      mercator,
      osm,
      unM49,
      callingcode,
      currency,
      flag,
      geohash,
      qibla,
      roadinfo,
      sun,
      timezone,
      what3words);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationsCopyWith<_$_Annotations> get copyWith =>
      __$$_AnnotationsCopyWithImpl<_$_Annotations>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnotationsToJson(
      this,
    );
  }
}

abstract class _Annotations implements Annotations {
  factory _Annotations(
      {@JsonKey(name: 'DMS') final Dms? dms,
      @JsonKey(name: 'MGRS') final String? mgrs,
      @JsonKey(name: 'Maidenhead') final String? maidenhead,
      @JsonKey(name: 'Mercator') final Mercator? mercator,
      @JsonKey(name: 'OSM') final Osm? osm,
      @JsonKey(name: 'UN_M49') final UnM49? unM49,
      final int? callingcode,
      final Currency? currency,
      final String? flag,
      final String? geohash,
      final double? qibla,
      final Roadinfo? roadinfo,
      final Sun? sun,
      final Timezone? timezone,
      final What3words? what3words}) = _$_Annotations;

  factory _Annotations.fromJson(Map<String, dynamic> json) =
      _$_Annotations.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'DMS')
  Dms? get dms;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'MGRS')
  String? get mgrs;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'Maidenhead')
  String? get maidenhead;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'Mercator')
  Mercator? get mercator;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'OSM')
  Osm? get osm;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'UN_M49')
  UnM49? get unM49;
  @override
  int? get callingcode;
  @override
  Currency? get currency;
  @override
  String? get flag;
  @override
  String? get geohash;
  @override
  double? get qibla;
  @override
  Roadinfo? get roadinfo;
  @override
  Sun? get sun;
  @override
  Timezone? get timezone;
  @override
  What3words? get what3words;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationsCopyWith<_$_Annotations> get copyWith =>
      throw _privateConstructorUsedError;
}
