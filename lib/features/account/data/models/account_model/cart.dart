import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

@freezed
class Cart with _$Cart {
	factory Cart({
		String? id,
		String? userId,
		dynamic orderId,
	}) = _Cart;

	factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}