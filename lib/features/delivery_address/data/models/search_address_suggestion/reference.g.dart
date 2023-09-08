// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reference _$$_ReferenceFromJson(Map<String, dynamic> json) => _$_Reference(
      supplier: json['supplier'] == null
          ? null
          : Supplier.fromJson(json['supplier'] as Map<String, dynamic>),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_ReferenceToJson(_$_Reference instance) =>
    <String, dynamic>{
      'supplier': instance.supplier,
      'id': instance.id,
    };
