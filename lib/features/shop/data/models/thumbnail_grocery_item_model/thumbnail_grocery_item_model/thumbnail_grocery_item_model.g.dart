// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail_grocery_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThumbnailGroceryItemModel _$$_ThumbnailGroceryItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_ThumbnailGroceryItemModel(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      thumbnail: json['thumbnail'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      offerPrice: (json['offerPrice'] as num?)?.toDouble(),
      qty: json['qty'] as int?,
      qtyType: json['qtyType'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      orderCount: json['orderCount'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_ThumbnailGroceryItemModelToJson(
        _$_ThumbnailGroceryItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
      'offerPrice': instance.offerPrice,
      'qty': instance.qty,
      'qtyType': instance.qtyType,
      'rating': instance.rating,
      'orderCount': instance.orderCount,
      'name': instance.name,
      'description': instance.description,
    };
