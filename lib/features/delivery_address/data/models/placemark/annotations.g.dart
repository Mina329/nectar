// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Annotations _$$_AnnotationsFromJson(Map<String, dynamic> json) =>
    _$_Annotations(
      dms: json['DMS'] == null
          ? null
          : Dms.fromJson(json['DMS'] as Map<String, dynamic>),
      mgrs: json['MGRS'] as String?,
      maidenhead: json['Maidenhead'] as String?,
      mercator: json['Mercator'] == null
          ? null
          : Mercator.fromJson(json['Mercator'] as Map<String, dynamic>),
      osm: json['OSM'] == null
          ? null
          : Osm.fromJson(json['OSM'] as Map<String, dynamic>),
      unM49: json['UN_M49'] == null
          ? null
          : UnM49.fromJson(json['UN_M49'] as Map<String, dynamic>),
      callingcode: json['callingcode'] as int?,
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      flag: json['flag'] as String?,
      geohash: json['geohash'] as String?,
      qibla: (json['qibla'] as num?)?.toDouble(),
      roadinfo: json['roadinfo'] == null
          ? null
          : Roadinfo.fromJson(json['roadinfo'] as Map<String, dynamic>),
      sun: json['sun'] == null
          ? null
          : Sun.fromJson(json['sun'] as Map<String, dynamic>),
      timezone: json['timezone'] == null
          ? null
          : Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
      what3words: json['what3words'] == null
          ? null
          : What3words.fromJson(json['what3words'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AnnotationsToJson(_$_Annotations instance) =>
    <String, dynamic>{
      'DMS': instance.dms,
      'MGRS': instance.mgrs,
      'Maidenhead': instance.maidenhead,
      'Mercator': instance.mercator,
      'OSM': instance.osm,
      'UN_M49': instance.unM49,
      'callingcode': instance.callingcode,
      'currency': instance.currency,
      'flag': instance.flag,
      'geohash': instance.geohash,
      'qibla': instance.qibla,
      'roadinfo': instance.roadinfo,
      'sun': instance.sun,
      'timezone': instance.timezone,
      'what3words': instance.what3words,
    };
