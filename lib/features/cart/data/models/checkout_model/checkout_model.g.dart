// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CheckoutModel _$$_CheckoutModelFromJson(Map<String, dynamic> json) =>
    _$_CheckoutModel(
      order: json['order'] == null
          ? null
          : Order.fromJson(json['order'] as Map<String, dynamic>),
      clientSecret: json['clientSecret'] as String?,
      publishableKey: json['publishableKey'] as String?,
    );

Map<String, dynamic> _$$_CheckoutModelToJson(_$_CheckoutModel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'clientSecret': instance.clientSecret,
      'publishableKey': instance.publishableKey,
    };
