import 'package:freezed_annotation/freezed_annotation.dart';

import 'item_detail.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    int? qty,
    ItemDetail? item,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
