// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      title: json['title'] as String?,
      id: json['id'] as String?,
      resultType: json['resultType'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      position: json['position'] == null
          ? null
          : Position.fromJson(json['position'] as Map<String, dynamic>),
      access: (json['access'] as List<dynamic>?)
          ?.map((e) => Access.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: json['distance'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      references: (json['references'] as List<dynamic>?)
          ?.map((e) => Reference.fromJson(e as Map<String, dynamic>))
          .toList(),
      foodTypes: (json['foodTypes'] as List<dynamic>?)
          ?.map((e) => FoodType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
      'resultType': instance.resultType,
      'address': instance.address,
      'position': instance.position,
      'access': instance.access,
      'distance': instance.distance,
      'categories': instance.categories,
      'references': instance.references,
      'foodTypes': instance.foodTypes,
    };
