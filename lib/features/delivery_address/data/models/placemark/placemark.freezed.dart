// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'placemark.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Placemark _$PlacemarkFromJson(Map<String, dynamic> json) {
  return _Placemark.fromJson(json);
}

/// @nodoc
mixin _$Placemark {
  String? get documentation => throw _privateConstructorUsedError;
  List<License>? get licenses => throw _privateConstructorUsedError;
  Rate? get rate => throw _privateConstructorUsedError;
  List<Result>? get results => throw _privateConstructorUsedError;
  Status? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'stay_informed')
  StayInformed? get stayInformed => throw _privateConstructorUsedError;
  String? get thanks => throw _privateConstructorUsedError;
  Timestamp? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacemarkCopyWith<Placemark> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacemarkCopyWith<$Res> {
  factory $PlacemarkCopyWith(Placemark value, $Res Function(Placemark) then) =
      _$PlacemarkCopyWithImpl<$Res, Placemark>;
  @useResult
  $Res call(
      {String? documentation,
      List<License>? licenses,
      Rate? rate,
      List<Result>? results,
      Status? status,
      @JsonKey(name: 'stay_informed') StayInformed? stayInformed,
      String? thanks,
      Timestamp? timestamp,
      @JsonKey(name: 'total_results') int? totalResults});

  $RateCopyWith<$Res>? get rate;
  $StatusCopyWith<$Res>? get status;
  $StayInformedCopyWith<$Res>? get stayInformed;
  $TimestampCopyWith<$Res>? get timestamp;
}

/// @nodoc
class _$PlacemarkCopyWithImpl<$Res, $Val extends Placemark>
    implements $PlacemarkCopyWith<$Res> {
  _$PlacemarkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentation = freezed,
    Object? licenses = freezed,
    Object? rate = freezed,
    Object? results = freezed,
    Object? status = freezed,
    Object? stayInformed = freezed,
    Object? thanks = freezed,
    Object? timestamp = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      licenses: freezed == licenses
          ? _value.licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      stayInformed: freezed == stayInformed
          ? _value.stayInformed
          : stayInformed // ignore: cast_nullable_to_non_nullable
              as StayInformed?,
      thanks: freezed == thanks
          ? _value.thanks
          : thanks // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RateCopyWith<$Res>? get rate {
    if (_value.rate == null) {
      return null;
    }

    return $RateCopyWith<$Res>(_value.rate!, (value) {
      return _then(_value.copyWith(rate: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StayInformedCopyWith<$Res>? get stayInformed {
    if (_value.stayInformed == null) {
      return null;
    }

    return $StayInformedCopyWith<$Res>(_value.stayInformed!, (value) {
      return _then(_value.copyWith(stayInformed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimestampCopyWith<$Res>? get timestamp {
    if (_value.timestamp == null) {
      return null;
    }

    return $TimestampCopyWith<$Res>(_value.timestamp!, (value) {
      return _then(_value.copyWith(timestamp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PlacemarkCopyWith<$Res> implements $PlacemarkCopyWith<$Res> {
  factory _$$_PlacemarkCopyWith(
          _$_Placemark value, $Res Function(_$_Placemark) then) =
      __$$_PlacemarkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? documentation,
      List<License>? licenses,
      Rate? rate,
      List<Result>? results,
      Status? status,
      @JsonKey(name: 'stay_informed') StayInformed? stayInformed,
      String? thanks,
      Timestamp? timestamp,
      @JsonKey(name: 'total_results') int? totalResults});

  @override
  $RateCopyWith<$Res>? get rate;
  @override
  $StatusCopyWith<$Res>? get status;
  @override
  $StayInformedCopyWith<$Res>? get stayInformed;
  @override
  $TimestampCopyWith<$Res>? get timestamp;
}

/// @nodoc
class __$$_PlacemarkCopyWithImpl<$Res>
    extends _$PlacemarkCopyWithImpl<$Res, _$_Placemark>
    implements _$$_PlacemarkCopyWith<$Res> {
  __$$_PlacemarkCopyWithImpl(
      _$_Placemark _value, $Res Function(_$_Placemark) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentation = freezed,
    Object? licenses = freezed,
    Object? rate = freezed,
    Object? results = freezed,
    Object? status = freezed,
    Object? stayInformed = freezed,
    Object? thanks = freezed,
    Object? timestamp = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_Placemark(
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      licenses: freezed == licenses
          ? _value._licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Rate?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status?,
      stayInformed: freezed == stayInformed
          ? _value.stayInformed
          : stayInformed // ignore: cast_nullable_to_non_nullable
              as StayInformed?,
      thanks: freezed == thanks
          ? _value.thanks
          : thanks // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Placemark implements _Placemark {
  _$_Placemark(
      {this.documentation,
      final List<License>? licenses,
      this.rate,
      final List<Result>? results,
      this.status,
      @JsonKey(name: 'stay_informed') this.stayInformed,
      this.thanks,
      this.timestamp,
      @JsonKey(name: 'total_results') this.totalResults})
      : _licenses = licenses,
        _results = results;

  factory _$_Placemark.fromJson(Map<String, dynamic> json) =>
      _$$_PlacemarkFromJson(json);

  @override
  final String? documentation;
  final List<License>? _licenses;
  @override
  List<License>? get licenses {
    final value = _licenses;
    if (value == null) return null;
    if (_licenses is EqualUnmodifiableListView) return _licenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Rate? rate;
  final List<Result>? _results;
  @override
  List<Result>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Status? status;
  @override
  @JsonKey(name: 'stay_informed')
  final StayInformed? stayInformed;
  @override
  final String? thanks;
  @override
  final Timestamp? timestamp;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'Placemark(documentation: $documentation, licenses: $licenses, rate: $rate, results: $results, status: $status, stayInformed: $stayInformed, thanks: $thanks, timestamp: $timestamp, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Placemark &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            const DeepCollectionEquality().equals(other._licenses, _licenses) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.stayInformed, stayInformed) ||
                other.stayInformed == stayInformed) &&
            (identical(other.thanks, thanks) || other.thanks == thanks) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      documentation,
      const DeepCollectionEquality().hash(_licenses),
      rate,
      const DeepCollectionEquality().hash(_results),
      status,
      stayInformed,
      thanks,
      timestamp,
      totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacemarkCopyWith<_$_Placemark> get copyWith =>
      __$$_PlacemarkCopyWithImpl<_$_Placemark>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacemarkToJson(
      this,
    );
  }
}

abstract class _Placemark implements Placemark {
  factory _Placemark(
      {final String? documentation,
      final List<License>? licenses,
      final Rate? rate,
      final List<Result>? results,
      final Status? status,
      @JsonKey(name: 'stay_informed') final StayInformed? stayInformed,
      final String? thanks,
      final Timestamp? timestamp,
      @JsonKey(name: 'total_results') final int? totalResults}) = _$_Placemark;

  factory _Placemark.fromJson(Map<String, dynamic> json) =
      _$_Placemark.fromJson;

  @override
  String? get documentation;
  @override
  List<License>? get licenses;
  @override
  Rate? get rate;
  @override
  List<Result>? get results;
  @override
  Status? get status;
  @override
  @JsonKey(name: 'stay_informed')
  StayInformed? get stayInformed;
  @override
  String? get thanks;
  @override
  Timestamp? get timestamp;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_PlacemarkCopyWith<_$_Placemark> get copyWith =>
      throw _privateConstructorUsedError;
}
