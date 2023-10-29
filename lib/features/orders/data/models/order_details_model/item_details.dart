import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_details.freezed.dart';
part 'item_details.g.dart';

@freezed
class ItemDetails with _$ItemDetails {
	factory ItemDetails({
		String? id,
		String? categoryId,
		String? thumbnail,
		double? price,
		double? offerPrice,
		int? qty,
		String? qtyType,
	}) = _ItemDetails;

	factory ItemDetails.fromJson(Map<String, dynamic> json) => _$ItemDetailsFromJson(json);
}