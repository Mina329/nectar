// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroceryItemModel _$$_GroceryItemModelFromJson(Map<String, dynamic> json) =>
    _$_GroceryItemModel(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      brandId: json['brandId'] as String?,
      name: json['name'] as String?,
      thumbnail: json['thumbnail'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      offerPrice: (json['offerPrice'] as num?)?.toDouble(),
      qty: json['qty'] as int?,
      qtyType: json['qtyType'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavorite: json['isFavorite'] as bool?,
    );

Map<String, dynamic> _$$_GroceryItemModelToJson(_$_GroceryItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'brandId': instance.brandId,
      'name': instance.name,
      'thumbnail': instance.thumbnail,
      'description': instance.description,
      'price': instance.price,
      'offerPrice': instance.offerPrice,
      'qty': instance.qty,
      'qtyType': instance.qtyType,
      'brand': instance.brand,
      'category': instance.category,
      'images': instance.images,
      'reviews': instance.reviews,
      'isFavorite': instance.isFavorite,
    };
