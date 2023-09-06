import 'package:freezed_annotation/freezed_annotation.dart';

import 'regions.dart';

part 'un_m49.freezed.dart';
part 'un_m49.g.dart';

@freezed
class UnM49 with _$UnM49 {
  factory UnM49({
    Regions? regions,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'statistical_groupings') List<String>? statisticalGroupings,
  }) = _UnM49;

  factory UnM49.fromJson(Map<String, dynamic> json) => _$UnM49FromJson(json);
}
