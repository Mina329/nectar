// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placemark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Placemark _$$_PlacemarkFromJson(Map<String, dynamic> json) => _$_Placemark(
      documentation: json['documentation'] as String?,
      licenses: (json['licenses'] as List<dynamic>?)
          ?.map((e) => License.fromJson(e as Map<String, dynamic>))
          .toList(),
      rate: json['rate'] == null
          ? null
          : Rate.fromJson(json['rate'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      stayInformed: json['stay_informed'] == null
          ? null
          : StayInformed.fromJson(
              json['stay_informed'] as Map<String, dynamic>),
      thanks: json['thanks'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : Timestamp.fromJson(json['timestamp'] as Map<String, dynamic>),
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$$_PlacemarkToJson(_$_Placemark instance) =>
    <String, dynamic>{
      'documentation': instance.documentation,
      'licenses': instance.licenses,
      'rate': instance.rate,
      'results': instance.results,
      'status': instance.status,
      'stay_informed': instance.stayInformed,
      'thanks': instance.thanks,
      'timestamp': instance.timestamp,
      'total_results': instance.totalResults,
    };
