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
      cs: json['cs'] as String?,
      pk: json['pk'] as String?,
    );

Map<String, dynamic> _$$_CheckoutModelToJson(_$_CheckoutModel instance) =>
    <String, dynamic>{
      'order': instance.order,
      'cs': instance.cs,
      'pk': instance.pk,
    };
