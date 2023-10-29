// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDetailsModel _$$_OrderDetailsModelFromJson(Map<String, dynamic> json) =>
    _$_OrderDetailsModel(
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
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderDetailsModelToJson(
        _$_OrderDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'userId': instance.userId,
      'addressId': instance.addressId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
      'address': instance.address,
      'user': instance.user,
      'items': instance.items,
    };
