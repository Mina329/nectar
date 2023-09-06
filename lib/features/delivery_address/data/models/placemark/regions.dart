import 'package:freezed_annotation/freezed_annotation.dart';

part 'regions.freezed.dart';
part 'regions.g.dart';

@freezed
class Regions with _$Regions {
  factory Regions({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'AFRICA') String? africa,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'EG') String? eg,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'NORTHERN_AFRICA') String? northernAfrica,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'WORLD') String? world,
  }) = _Regions;

  factory Regions.fromJson(Map<String, dynamic> json) =>
      _$RegionsFromJson(json);
}
