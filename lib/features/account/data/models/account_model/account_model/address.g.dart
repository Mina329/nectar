// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      apartmentNumber: json['apartmentNumber'] as String?,
      floorNumber: json['floorNumber'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lng: (json['lng'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'buildingNumber': instance.buildingNumber,
      'apartmentNumber': instance.apartmentNumber,
      'floorNumber': instance.floorNumber,
      'lat': instance.lat,
      'lng': instance.lng,
    };
