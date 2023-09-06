// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      annotations: json['annotations'] == null
          ? null
          : Annotations.fromJson(json['annotations'] as Map<String, dynamic>),
      bounds: json['bounds'] == null
          ? null
          : Bounds.fromJson(json['bounds'] as Map<String, dynamic>),
      components: json['components'] == null
          ? null
          : Components.fromJson(json['components'] as Map<String, dynamic>),
      confidence: json['confidence'] as int?,
      formatted: json['formatted'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'annotations': instance.annotations,
      'bounds': instance.bounds,
      'components': instance.components,
      'confidence': instance.confidence,
      'formatted': instance.formatted,
      'geometry': instance.geometry,
    };
