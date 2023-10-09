// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      itemId: json['itemId'] as String?,
      userId: json['userId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'itemId': instance.itemId,
      'userId': instance.userId,
      'rating': instance.rating,
      'comment': instance.comment,
      'createdAt': instance.createdAt,
    };
