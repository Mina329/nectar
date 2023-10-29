import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_details.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
	factory Item({
		int? qty,
		ItemDetails? itemDetails,
	}) = _Item;

	factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}