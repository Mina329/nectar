import 'package:freezed_annotation/freezed_annotation.dart';

import 'access.dart';
import 'address.dart';
import 'category.dart';
import 'food_type.dart';
import 'position.dart';
import 'reference.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
	factory Item({
		String? title,
		String? id,
		String? resultType,
		Address? address,
		Position? position,
		List<Access>? access,
		int? distance,
		List<Category>? categories,
		List<Reference>? references,
		List<FoodType>? foodTypes,
	}) = _Item;

	factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}