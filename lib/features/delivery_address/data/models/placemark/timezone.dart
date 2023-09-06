import 'package:freezed_annotation/freezed_annotation.dart';

part 'timezone.freezed.dart';
part 'timezone.g.dart';

@freezed
class Timezone with _$Timezone {
  factory Timezone({
    String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'now_in_dst') int? nowInDst,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'offset_sec') int? offsetSec,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'offset_string') String? offsetString,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'short_name') String? shortName,
  }) = _Timezone;

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);
}
