// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDetail _$$_ItemDetailFromJson(Map<String, dynamic> json) =>
    _$_ItemDetail(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      thumbnail: json['thumbnail'] as String?,
      offerPrice: (json['offerPrice'] as num?)?.toDouble(),
      price: (json['price'] as num?)?.toDouble(),
      qtyType: json['qtyType'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ItemDetailToJson(_$_ItemDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'thumbnail': instance.thumbnail,
      'offerPrice': instance.offerPrice,
      'price': instance.price,
      'qtyType': instance.qtyType,
      'name': instance.name,
      'description': instance.description,
    };
