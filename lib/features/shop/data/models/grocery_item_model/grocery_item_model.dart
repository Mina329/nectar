import 'package:freezed_annotation/freezed_annotation.dart';

import 'brand.dart';
import 'category.dart';
import 'image.dart';
import 'review.dart';

part 'grocery_item_model.freezed.dart';
part 'grocery_item_model.g.dart';

@freezed
class GroceryItemModel with _$GroceryItemModel {
  factory GroceryItemModel({
    String? id,
    String? categoryId,
    String? brandId,
    String? thumbnail,
    double? price,
    double? offerPrice,
    int? qty,
    String? qtyType,
    Brand? brand,
    Category? category,
    List<Image>? images,
    List<Review>? reviews,
    String? name,
    String? description,
    bool? isFavorite,
  }) = _GroceryItemModel;

  factory GroceryItemModel.fromJson(Map<String, dynamic> json) =>
      _$GroceryItemModelFromJson(json);
}
