import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_detail.freezed.dart';
part 'item_detail.g.dart';

@freezed
class ItemDetail with _$ItemDetail {
  factory ItemDetail({
    String? id,
    String? categoryId,
    String? brandId,
    String? thumbnail,
    double? offerPrice,
    double? price,
    String? qtyType,
    String? name,
    String? description,
  }) = _ItemDetail;

  factory ItemDetail.fromJson(Map<String, dynamic> json) =>
      _$ItemDetailFromJson(json);
}
