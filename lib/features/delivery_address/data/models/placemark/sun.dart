import 'package:freezed_annotation/freezed_annotation.dart';

import 'rise.dart';
import 'set.dart';

part 'sun.freezed.dart';
part 'sun.g.dart';

@freezed
class Sun with _$Sun {
  factory Sun({
    Rise? rise,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'set') Set? sunSet,
  }) = _Sun;

  factory Sun.fromJson(Map<String, dynamic> json) => _$SunFromJson(json);
}
