import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_type.freezed.dart';
part 'food_type.g.dart';

@freezed
class FoodType with _$FoodType {
  factory FoodType({
    String? id,
    String? name,
    bool? primary,
  }) = _FoodType;

  factory FoodType.fromJson(Map<String, dynamic> json) =>
      _$FoodTypeFromJson(json);
}
