import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  factory CartModel({
    String? id,
    String? userId,
    String? orderId,
    List<Item>? items,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}
