// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      qty: json['qty'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      item: json['item'] == null
          ? null
          : ItemDetails.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'qty': instance.qty,
      'price': instance.price,
      'item': instance.item,
    };
