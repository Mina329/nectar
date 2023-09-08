// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_address_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchAddressSuggestion _$$_SearchAddressSuggestionFromJson(
        Map<String, dynamic> json) =>
    _$_SearchAddressSuggestion(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      queryTerms: json['queryTerms'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_SearchAddressSuggestionToJson(
        _$_SearchAddressSuggestion instance) =>
    <String, dynamic>{
      'items': instance.items,
      'queryTerms': instance.queryTerms,
    };
