import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'search_address_suggestion.freezed.dart';
part 'search_address_suggestion.g.dart';

@freezed
class SearchAddressSuggestion with _$SearchAddressSuggestion {
	factory SearchAddressSuggestion({
		List<Item>? items,
		List<dynamic>? queryTerms,
	}) = _SearchAddressSuggestion;

	factory SearchAddressSuggestion.fromJson(Map<String, dynamic> json) => _$SearchAddressSuggestionFromJson(json);
}