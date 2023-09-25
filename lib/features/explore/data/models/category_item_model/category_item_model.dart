import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_item_model.freezed.dart';
part 'category_item_model.g.dart';

@freezed
class CategoryItemModel with _$CategoryItemModel {
	factory CategoryItemModel({
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
	}) = _CategoryItemModel;

	factory CategoryItemModel.fromJson(Map<String, dynamic> json) => _$CategoryItemModelFromJson(json);
}