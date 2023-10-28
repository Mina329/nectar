import 'package:freezed_annotation/freezed_annotation.dart';

part 'rise.freezed.dart';
part 'rise.g.dart';

@freezed
class Rise with _$Rise {
  factory Rise({
    int? apparent,
    int? astronomical,
    int? civil,
    int? nautical,
  }) = _Rise;

  factory Rise.fromJson(Map<String, dynamic> json) => _$RiseFromJson(json);
}
