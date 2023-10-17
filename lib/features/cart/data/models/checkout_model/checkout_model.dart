import 'package:freezed_annotation/freezed_annotation.dart';

import 'order.dart';

part 'checkout_model.freezed.dart';
part 'checkout_model.g.dart';

@freezed
class CheckoutModel with _$CheckoutModel {
	factory CheckoutModel({
		Order? order,
		String? clientSecret,
		String? publishableKey,
	}) = _CheckoutModel;

	factory CheckoutModel.fromJson(Map<String, dynamic> json) => _$CheckoutModelFromJson(json);
}