import 'package:freezed_annotation/freezed_annotation.dart';

import 'supplier.dart';

part 'reference.freezed.dart';
part 'reference.g.dart';

@freezed
class Reference with _$Reference {
  factory Reference({
    Supplier? supplier,
    String? id,
  }) = _Reference;

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);
}
