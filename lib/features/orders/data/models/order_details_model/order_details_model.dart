import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'item.dart';
import 'user.dart';

part 'order_details_model.freezed.dart';
part 'order_details_model.g.dart';

@freezed
class OrderDetailsModel with _$OrderDetailsModel {
	factory OrderDetailsModel({
		String? id,
		String? status,
		String? userId,
		String? addressId,
		DateTime? createdAt,
		DateTime? expiresAt,
		Address? address,
		User? user,
		List<Item>? items,
	}) = _OrderDetailsModel;

	factory OrderDetailsModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsModelFromJson(json);
}