import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
class Order with _$Order {
  factory Order({
    String? id,
    String? status,
    DateTime? createdAt,
    DateTime? expiresAt,
    List<Item>? items,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
