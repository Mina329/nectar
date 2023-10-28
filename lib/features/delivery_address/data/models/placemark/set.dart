import 'package:freezed_annotation/freezed_annotation.dart';

part 'set.freezed.dart';
part 'set.g.dart';

@freezed
class Set with _$Set {
  factory Set({
    int? apparent,
    int? astronomical,
    int? civil,
    int? nautical,
  }) = _Set;

  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);
}
