// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      qty: json['qty'] as int?,
      itemDetails: json['itemDetails'] == null
          ? null
          : ItemDetails.fromJson(json['itemDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'qty': instance.qty,
      'itemDetails': instance.itemDetails,
    };
