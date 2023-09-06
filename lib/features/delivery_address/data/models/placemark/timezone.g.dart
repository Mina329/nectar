// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timezone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Timezone _$$_TimezoneFromJson(Map<String, dynamic> json) => _$_Timezone(
      name: json['name'] as String?,
      nowInDst: json['now_in_dst'] as int?,
      offsetSec: json['offset_sec'] as int?,
      offsetString: json['offset_string'] as String?,
      shortName: json['short_name'] as String?,
    );

Map<String, dynamic> _$$_TimezoneToJson(_$_Timezone instance) =>
    <String, dynamic>{
      'name': instance.name,
      'now_in_dst': instance.nowInDst,
      'offset_sec': instance.offsetSec,
      'offset_string': instance.offsetString,
      'short_name': instance.shortName,
    };
