// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currency _$$_CurrencyFromJson(Map<String, dynamic> json) => _$_Currency(
      alternateSymbols: (json['alternate_symbols'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      decimalMark: json['decimal_mark'] as String?,
      htmlEntity: json['html_entity'] as String?,
      isoCode: json['iso_code'] as String?,
      isoNumeric: json['iso_numeric'] as String?,
      name: json['name'] as String?,
      smallestDenomination: json['smallest_denomination'] as int?,
      subunit: json['subunit'] as String?,
      subunitToUnit: json['subunit_to_unit'] as int?,
      symbol: json['symbol'] as String?,
      symbolFirst: json['symbol_first'] as int?,
      thousandsSeparator: json['thousands_separator'] as String?,
    );

Map<String, dynamic> _$$_CurrencyToJson(_$_Currency instance) =>
    <String, dynamic>{
      'alternate_symbols': instance.alternateSymbols,
      'decimal_mark': instance.decimalMark,
      'html_entity': instance.htmlEntity,
      'iso_code': instance.isoCode,
      'iso_numeric': instance.isoNumeric,
      'name': instance.name,
      'smallest_denomination': instance.smallestDenomination,
      'subunit': instance.subunit,
      'subunit_to_unit': instance.subunitToUnit,
      'symbol': instance.symbol,
      'symbol_first': instance.symbolFirst,
      'thousands_separator': instance.thousandsSeparator,
    };
