// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oauth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OauthModel _$$_OauthModelFromJson(Map<String, dynamic> json) =>
    _$_OauthModel(
      token: json['token'] as String?,
      expirationDate: json['expirationDate'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OauthModelToJson(_$_OauthModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expirationDate': instance.expirationDate,
      'user': instance.user,
    };
