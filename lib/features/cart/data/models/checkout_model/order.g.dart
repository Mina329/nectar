// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      userId: json['userId'] as String?,
      id: json['id'] as String?,
      orderDate: json['orderDate'] == null
          ? null
          : DateTime.parse(json['orderDate'] as String),
      status: json['status'] as String?,
      totalPrice: json['totalPrice'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'orderDate': instance.orderDate?.toIso8601String(),
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'items': instance.items,
    };
