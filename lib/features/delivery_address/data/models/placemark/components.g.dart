// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Components _$$_ComponentsFromJson(Map<String, dynamic> json) =>
    _$_Components(
      iso31661Alpha2: json['ISO_3166-1_alpha-2'] as String?,
      iso31661Alpha3: json['ISO_3166-1_alpha-3'] as String?,
      iso31662: (json['ISO_3166-2'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      category: json['_category'] as String?,
      type: json['_type'] as String?,
      city: json['city'] as String?,
      continent: json['continent'] as String?,
      country: json['country'] as String?,
      countryCode: json['country_code'] as String?,
      houseNumber: json['house_number'] as String?,
      neighbourhood: json['neighbourhood'] as String?,
      postcode: json['postcode'] as String?,
      road: json['road'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_ComponentsToJson(_$_Components instance) =>
    <String, dynamic>{
      'ISO_3166-1_alpha-2': instance.iso31661Alpha2,
      'ISO_3166-1_alpha-3': instance.iso31661Alpha3,
      'ISO_3166-2': instance.iso31662,
      '_category': instance.category,
      '_type': instance.type,
      'city': instance.city,
      'continent': instance.continent,
      'country': instance.country,
      'country_code': instance.countryCode,
      'house_number': instance.houseNumber,
      'neighbourhood': instance.neighbourhood,
      'postcode': instance.postcode,
      'road': instance.road,
      'state': instance.state,
    };
