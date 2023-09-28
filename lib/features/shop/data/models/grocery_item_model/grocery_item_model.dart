import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'category.dart';
import 'image.dart';
import 'review.dart';

part 'grocery_item_model.freezed.dart';
part 'grocery_item_model.g.dart';

@freezed
class GroceryItemModel with _$GroceryItemModel {
	factory GroceryItemModel({
		String? id,
		String? categoryId,
		String? brandId,
		String? name,
		String? thumbnail,
		String? description,
		double? price,
		double? offerPrice,
		int? quantity,
		String? quantityType,
		Brand? brand,
		Category? category,
		List<Image>? images,
		List<Review>? reviews,
		bool? isFavorite,
	}) = _GroceryItemModel;

	factory GroceryItemModel.fromJson(Map<String, dynamic> json) => _$GroceryItemModelFromJson(json);
}