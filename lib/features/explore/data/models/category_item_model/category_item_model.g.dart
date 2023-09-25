// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryItemModel _$$_CategoryItemModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryItemModel(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      name: json['name'] as String?,
      thumbnail: json['thumbnail'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      offerPrice: (json['offerPrice'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      quantityType: json['quantityType'] as String?,
    );

Map<String, dynamic> _$$_CategoryItemModelToJson(
        _$_CategoryItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'price': instance.price,
      'offerPrice': instance.offerPrice,
      'quantity': instance.quantity,
      'quantityType': instance.quantityType,
    };
