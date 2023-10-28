import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate.freezed.dart';
part 'rate.g.dart';

@freezed
class Rate with _$Rate {
  factory Rate({
    int? limit,
    int? remaining,
    int? reset,
  }) = _Rate;

  factory Rate.fromJson(Map<String, dynamic> json) => _$RateFromJson(json);
}
