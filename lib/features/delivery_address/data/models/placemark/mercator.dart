import 'package:freezed_annotation/freezed_annotation.dart';

part 'mercator.freezed.dart';
part 'mercator.g.dart';

@freezed
class Mercator with _$Mercator {
  factory Mercator({
    double? x,
    double? y,
  }) = _Mercator;

  factory Mercator.fromJson(Map<String, dynamic> json) =>
      _$MercatorFromJson(json);
}
