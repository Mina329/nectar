// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sun.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sun _$$_SunFromJson(Map<String, dynamic> json) => _$_Sun(
      rise: json['rise'] == null
          ? null
          : Rise.fromJson(json['rise'] as Map<String, dynamic>),
      sunSet: json['set'] == null
          ? null
          : Set.fromJson(json['set'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SunToJson(_$_Sun instance) => <String, dynamic>{
      'rise': instance.rise,
      'set': instance.sunSet,
    };
