// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllOrdersModel _$$_AllOrdersModelFromJson(Map<String, dynamic> json) =>
    _$_AllOrdersModel(
      id: json['id'] as String?,
      status: json['status'] as String?,
      userId: json['userId'] as String?,
      addressId: json['addressId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      expiresAt: json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AllOrdersModelToJson(_$_AllOrdersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userId': instance.userId,
      'addressId': instance.addressId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'totalPrice': instance.totalPrice,
    };
