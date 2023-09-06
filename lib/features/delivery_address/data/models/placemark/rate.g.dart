// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rate _$$_RateFromJson(Map<String, dynamic> json) => _$_Rate(
      limit: json['limit'] as int?,
      remaining: json['remaining'] as int?,
      reset: json['reset'] as int?,
    );

Map<String, dynamic> _$$_RateToJson(_$_Rate instance) => <String, dynamic>{
      'limit': instance.limit,
      'remaining': instance.remaining,
      'reset': instance.reset,
    };
