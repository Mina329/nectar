import 'package:freezed_annotation/freezed_annotation.dart';

part 'geometry.freezed.dart';
part 'geometry.g.dart';

@freezed
class Geometry with _$Geometry {
  factory Geometry({
    double? lat,
    double? lng,
  }) = _Geometry;

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);
}
