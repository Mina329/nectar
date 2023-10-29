import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_orders_model.freezed.dart';
part 'all_orders_model.g.dart';

@freezed
class AllOrdersModel with _$AllOrdersModel {
	factory AllOrdersModel({
		String? id,
		String? status,
		String? userId,
		String? addressId,
		DateTime? createdAt,
		DateTime? expiresAt,
		double? totalPrice,
	}) = _AllOrdersModel;

	factory AllOrdersModel.fromJson(Map<String, dynamic> json) => _$AllOrdersModelFromJson(json);
}