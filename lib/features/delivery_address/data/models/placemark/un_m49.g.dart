// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'un_m49.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnM49 _$$_UnM49FromJson(Map<String, dynamic> json) => _$_UnM49(
      regions: json['regions'] == null
          ? null
          : Regions.fromJson(json['regions'] as Map<String, dynamic>),
      statisticalGroupings: (json['statistical_groupings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UnM49ToJson(_$_UnM49 instance) => <String, dynamic>{
      'regions': instance.regions,
      'statistical_groupings': instance.statisticalGroupings,
    };
