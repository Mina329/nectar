import 'package:freezed_annotation/freezed_annotation.dart';

part 'thumbnail_grocery_item_model.freezed.dart';
part 'thumbnail_grocery_item_model.g.dart';

@freezed
class ThumbnailGroceryItemModel with _$ThumbnailGroceryItemModel {
  factory ThumbnailGroceryItemModel({
    String? id,
    String? categoryId,
    String? brandId,
    String? thumbnail,
    double? price,
    double? offerPrice,
    int? qty,
    String? qtyType,
    double? rating,
    int? orderCount,
    String? name,
    String? description,
  }) = _ThumbnailGroceryItemModel;

  factory ThumbnailGroceryItemModel.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailGroceryItemModelFromJson(json);
}
