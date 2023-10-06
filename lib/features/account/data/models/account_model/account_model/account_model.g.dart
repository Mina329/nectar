// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map<String, dynamic> json) =>
    _$_AccountModel(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dayOfBirth: json['dayOfBirth'] == null
          ? null
          : DateTime.parse(json['dayOfBirth'] as String),
      profilePicture: json['profilePicture'] as String?,
      role: json['role'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => Address.fromJson(e as Map<String, dynamic>))
          .toList(),
      preferedAddressId: json['preferedAddressId'] as String?,
      preferedPayment: json['preferedPayment'] as String?,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'dayOfBirth': instance.dayOfBirth?.toIso8601String(),
      'profilePicture': instance.profilePicture,
      'role': instance.role,
      'addresses': instance.addresses,
      'preferedAddressId': instance.preferedAddressId,
      'preferedPayment': instance.preferedPayment,
    };
