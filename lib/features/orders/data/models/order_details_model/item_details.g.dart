// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemDetails _$$_ItemDetailsFromJson(Map<String, dynamic> json) =>
    _$_ItemDetails(
      id: json['id'] as String?,
      categoryId: json['categoryId'] as String?,
      thumbnail: json['thumbnail'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      offerPrice: (json['offerPrice'] as num?)?.toDouble(),
      qty: json['qty'] as int?,
      qtyType: json['qtyType'] as String?,
    );

Map<String, dynamic> _$$_ItemDetailsToJson(_$_ItemDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'thumbnail': instance.thumbnail,
      'price': instance.price,
      'offerPrice': instance.offerPrice,
      'qty': instance.qty,
      'qtyType': instance.qtyType,
    };
