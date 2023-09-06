import 'package:freezed_annotation/freezed_annotation.dart';

part 'components.freezed.dart';
part 'components.g.dart';

@freezed
class Components with _$Components {
  factory Components({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'ISO_3166-1_alpha-2') String? iso31661Alpha2,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'ISO_3166-1_alpha-3') String? iso31661Alpha3,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'ISO_3166-2') List<String>? iso31662,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_category') String? category,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_type') String? type,
    String? city,
    String? continent,
    String? country,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'country_code') String? countryCode,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'house_number') String? houseNumber,
    String? neighbourhood,
    String? postcode,
    String? road,
    String? state,
  }) = _Components;

  factory Components.fromJson(Map<String, dynamic> json) =>
      _$ComponentsFromJson(json);
}
