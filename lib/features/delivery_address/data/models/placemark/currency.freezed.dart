// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  return _Currency.fromJson(json);
}

/// @nodoc
mixin _$Currency {
  @JsonKey(name: 'alternate_symbols')
  List<String>? get alternateSymbols => throw _privateConstructorUsedError;
  @JsonKey(name: 'decimal_mark')
  String? get decimalMark => throw _privateConstructorUsedError;
  @JsonKey(name: 'html_entity')
  String? get htmlEntity => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_code')
  String? get isoCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'iso_numeric')
  String? get isoNumeric => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'smallest_denomination')
  int? get smallestDenomination => throw _privateConstructorUsedError;
  String? get subunit => throw _privateConstructorUsedError;
  @JsonKey(name: 'subunit_to_unit')
  int? get subunitToUnit => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'symbol_first')
  int? get symbolFirst => throw _privateConstructorUsedError;
  @JsonKey(name: 'thousands_separator')
  String? get thousandsSeparator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyCopyWith<Currency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
  @useResult
  $Res call(
      {@JsonKey(name: 'alternate_symbols') List<String>? alternateSymbols,
      @JsonKey(name: 'decimal_mark') String? decimalMark,
      @JsonKey(name: 'html_entity') String? htmlEntity,
      @JsonKey(name: 'iso_code') String? isoCode,
      @JsonKey(name: 'iso_numeric') String? isoNumeric,
      String? name,
      @JsonKey(name: 'smallest_denomination') int? smallestDenomination,
      String? subunit,
      @JsonKey(name: 'subunit_to_unit') int? subunitToUnit,
      String? symbol,
      @JsonKey(name: 'symbol_first') int? symbolFirst,
      @JsonKey(name: 'thousands_separator') String? thousandsSeparator});
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternateSymbols = freezed,
    Object? decimalMark = freezed,
    Object? htmlEntity = freezed,
    Object? isoCode = freezed,
    Object? isoNumeric = freezed,
    Object? name = freezed,
    Object? smallestDenomination = freezed,
    Object? subunit = freezed,
    Object? subunitToUnit = freezed,
    Object? symbol = freezed,
    Object? symbolFirst = freezed,
    Object? thousandsSeparator = freezed,
  }) {
    return _then(_value.copyWith(
      alternateSymbols: freezed == alternateSymbols
          ? _value.alternateSymbols
          : alternateSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      decimalMark: freezed == decimalMark
          ? _value.decimalMark
          : decimalMark // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlEntity: freezed == htmlEntity
          ? _value.htmlEntity
          : htmlEntity // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isoNumeric: freezed == isoNumeric
          ? _value.isoNumeric
          : isoNumeric // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      smallestDenomination: freezed == smallestDenomination
          ? _value.smallestDenomination
          : smallestDenomination // ignore: cast_nullable_to_non_nullable
              as int?,
      subunit: freezed == subunit
          ? _value.subunit
          : subunit // ignore: cast_nullable_to_non_nullable
              as String?,
      subunitToUnit: freezed == subunitToUnit
          ? _value.subunitToUnit
          : subunitToUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolFirst: freezed == symbolFirst
          ? _value.symbolFirst
          : symbolFirst // ignore: cast_nullable_to_non_nullable
              as int?,
      thousandsSeparator: freezed == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$$_CurrencyCopyWith(
          _$_Currency value, $Res Function(_$_Currency) then) =
      __$$_CurrencyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'alternate_symbols') List<String>? alternateSymbols,
      @JsonKey(name: 'decimal_mark') String? decimalMark,
      @JsonKey(name: 'html_entity') String? htmlEntity,
      @JsonKey(name: 'iso_code') String? isoCode,
      @JsonKey(name: 'iso_numeric') String? isoNumeric,
      String? name,
      @JsonKey(name: 'smallest_denomination') int? smallestDenomination,
      String? subunit,
      @JsonKey(name: 'subunit_to_unit') int? subunitToUnit,
      String? symbol,
      @JsonKey(name: 'symbol_first') int? symbolFirst,
      @JsonKey(name: 'thousands_separator') String? thousandsSeparator});
}

/// @nodoc
class __$$_CurrencyCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$_Currency>
    implements _$$_CurrencyCopyWith<$Res> {
  __$$_CurrencyCopyWithImpl(
      _$_Currency _value, $Res Function(_$_Currency) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alternateSymbols = freezed,
    Object? decimalMark = freezed,
    Object? htmlEntity = freezed,
    Object? isoCode = freezed,
    Object? isoNumeric = freezed,
    Object? name = freezed,
    Object? smallestDenomination = freezed,
    Object? subunit = freezed,
    Object? subunitToUnit = freezed,
    Object? symbol = freezed,
    Object? symbolFirst = freezed,
    Object? thousandsSeparator = freezed,
  }) {
    return _then(_$_Currency(
      alternateSymbols: freezed == alternateSymbols
          ? _value._alternateSymbols
          : alternateSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      decimalMark: freezed == decimalMark
          ? _value.decimalMark
          : decimalMark // ignore: cast_nullable_to_non_nullable
              as String?,
      htmlEntity: freezed == htmlEntity
          ? _value.htmlEntity
          : htmlEntity // ignore: cast_nullable_to_non_nullable
              as String?,
      isoCode: freezed == isoCode
          ? _value.isoCode
          : isoCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isoNumeric: freezed == isoNumeric
          ? _value.isoNumeric
          : isoNumeric // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      smallestDenomination: freezed == smallestDenomination
          ? _value.smallestDenomination
          : smallestDenomination // ignore: cast_nullable_to_non_nullable
              as int?,
      subunit: freezed == subunit
          ? _value.subunit
          : subunit // ignore: cast_nullable_to_non_nullable
              as String?,
      subunitToUnit: freezed == subunitToUnit
          ? _value.subunitToUnit
          : subunitToUnit // ignore: cast_nullable_to_non_nullable
              as int?,
      symbol: freezed == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      symbolFirst: freezed == symbolFirst
          ? _value.symbolFirst
          : symbolFirst // ignore: cast_nullable_to_non_nullable
              as int?,
      thousandsSeparator: freezed == thousandsSeparator
          ? _value.thousandsSeparator
          : thousandsSeparator // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Currency implements _Currency {
  _$_Currency(
      {@JsonKey(name: 'alternate_symbols') final List<String>? alternateSymbols,
      @JsonKey(name: 'decimal_mark') this.decimalMark,
      @JsonKey(name: 'html_entity') this.htmlEntity,
      @JsonKey(name: 'iso_code') this.isoCode,
      @JsonKey(name: 'iso_numeric') this.isoNumeric,
      this.name,
      @JsonKey(name: 'smallest_denomination') this.smallestDenomination,
      this.subunit,
      @JsonKey(name: 'subunit_to_unit') this.subunitToUnit,
      this.symbol,
      @JsonKey(name: 'symbol_first') this.symbolFirst,
      @JsonKey(name: 'thousands_separator') this.thousandsSeparator})
      : _alternateSymbols = alternateSymbols;

  factory _$_Currency.fromJson(Map<String, dynamic> json) =>
      _$$_CurrencyFromJson(json);

  final List<String>? _alternateSymbols;
  @override
  @JsonKey(name: 'alternate_symbols')
  List<String>? get alternateSymbols {
    final value = _alternateSymbols;
    if (value == null) return null;
    if (_alternateSymbols is EqualUnmodifiableListView)
      return _alternateSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'decimal_mark')
  final String? decimalMark;
  @override
  @JsonKey(name: 'html_entity')
  final String? htmlEntity;
  @override
  @JsonKey(name: 'iso_code')
  final String? isoCode;
  @override
  @JsonKey(name: 'iso_numeric')
  final String? isoNumeric;
  @override
  final String? name;
  @override
  @JsonKey(name: 'smallest_denomination')
  final int? smallestDenomination;
  @override
  final String? subunit;
  @override
  @JsonKey(name: 'subunit_to_unit')
  final int? subunitToUnit;
  @override
  final String? symbol;
  @override
  @JsonKey(name: 'symbol_first')
  final int? symbolFirst;
  @override
  @JsonKey(name: 'thousands_separator')
  final String? thousandsSeparator;

  @override
  String toString() {
    return 'Currency(alternateSymbols: $alternateSymbols, decimalMark: $decimalMark, htmlEntity: $htmlEntity, isoCode: $isoCode, isoNumeric: $isoNumeric, name: $name, smallestDenomination: $smallestDenomination, subunit: $subunit, subunitToUnit: $subunitToUnit, symbol: $symbol, symbolFirst: $symbolFirst, thousandsSeparator: $thousandsSeparator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Currency &&
            const DeepCollectionEquality()
                .equals(other._alternateSymbols, _alternateSymbols) &&
            (identical(other.decimalMark, decimalMark) ||
                other.decimalMark == decimalMark) &&
            (identical(other.htmlEntity, htmlEntity) ||
                other.htmlEntity == htmlEntity) &&
            (identical(other.isoCode, isoCode) || other.isoCode == isoCode) &&
            (identical(other.isoNumeric, isoNumeric) ||
                other.isoNumeric == isoNumeric) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.smallestDenomination, smallestDenomination) ||
                other.smallestDenomination == smallestDenomination) &&
            (identical(other.subunit, subunit) || other.subunit == subunit) &&
            (identical(other.subunitToUnit, subunitToUnit) ||
                other.subunitToUnit == subunitToUnit) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.symbolFirst, symbolFirst) ||
                other.symbolFirst == symbolFirst) &&
            (identical(other.thousandsSeparator, thousandsSeparator) ||
                other.thousandsSeparator == thousandsSeparator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_alternateSymbols),
      decimalMark,
      htmlEntity,
      isoCode,
      isoNumeric,
      name,
      smallestDenomination,
      subunit,
      subunitToUnit,
      symbol,
      symbolFirst,
      thousandsSeparator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      __$$_CurrencyCopyWithImpl<_$_Currency>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrencyToJson(
      this,
    );
  }
}

abstract class _Currency implements Currency {
  factory _Currency(
      {@JsonKey(name: 'alternate_symbols') final List<String>? alternateSymbols,
      @JsonKey(name: 'decimal_mark') final String? decimalMark,
      @JsonKey(name: 'html_entity') final String? htmlEntity,
      @JsonKey(name: 'iso_code') final String? isoCode,
      @JsonKey(name: 'iso_numeric') final String? isoNumeric,
      final String? name,
      @JsonKey(name: 'smallest_denomination') final int? smallestDenomination,
      final String? subunit,
      @JsonKey(name: 'subunit_to_unit') final int? subunitToUnit,
      final String? symbol,
      @JsonKey(name: 'symbol_first') final int? symbolFirst,
      @JsonKey(name: 'thousands_separator')
      final String? thousandsSeparator}) = _$_Currency;

  factory _Currency.fromJson(Map<String, dynamic> json) = _$_Currency.fromJson;

  @override
  @JsonKey(name: 'alternate_symbols')
  List<String>? get alternateSymbols;
  @override
  @JsonKey(name: 'decimal_mark')
  String? get decimalMark;
  @override
  @JsonKey(name: 'html_entity')
  String? get htmlEntity;
  @override
  @JsonKey(name: 'iso_code')
  String? get isoCode;
  @override
  @JsonKey(name: 'iso_numeric')
  String? get isoNumeric;
  @override
  String? get name;
  @override
  @JsonKey(name: 'smallest_denomination')
  int? get smallestDenomination;
  @override
  String? get subunit;
  @override
  @JsonKey(name: 'subunit_to_unit')
  int? get subunitToUnit;
  @override
  String? get symbol;
  @override
  @JsonKey(name: 'symbol_first')
  int? get symbolFirst;
  @override
  @JsonKey(name: 'thousands_separator')
  String? get thousandsSeparator;
  @override
  @JsonKey(ignore: true)
  _$$_CurrencyCopyWith<_$_Currency> get copyWith =>
      throw _privateConstructorUsedError;
}
