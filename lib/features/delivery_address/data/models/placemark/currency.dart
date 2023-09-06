import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
class Currency with _$Currency {
  factory Currency({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'alternate_symbols') List<String>? alternateSymbols,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'decimal_mark') String? decimalMark,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'html_entity') String? htmlEntity,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'iso_code') String? isoCode,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'iso_numeric') String? isoNumeric,
    String? name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'smallest_denomination') int? smallestDenomination,
    String? subunit,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'subunit_to_unit') int? subunitToUnit,
    String? symbol,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'symbol_first') int? symbolFirst,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'thousands_separator') String? thousandsSeparator,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
