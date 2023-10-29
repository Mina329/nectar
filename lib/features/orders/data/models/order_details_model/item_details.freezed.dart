// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDetails _$ItemDetailsFromJson(Map<String, dynamic> json) {
  return _ItemDetails.fromJson(json);
}

/// @nodoc
mixin _$ItemDetails {
  String? get id => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get offerPrice => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;
  String? get qtyType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDetailsCopyWith<ItemDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDetailsCopyWith<$Res> {
  factory $ItemDetailsCopyWith(
          ItemDetails value, $Res Function(ItemDetails) then) =
      _$ItemDetailsCopyWithImpl<$Res, ItemDetails>;
  @useResult
  $Res call(
      {String? id,
      String? categoryId,
      String? thumbnail,
      double? price,
      double? offerPrice,
      int? qty,
      String? qtyType});
}

/// @nodoc
class _$ItemDetailsCopyWithImpl<$Res, $Val extends ItemDetails>
    implements $ItemDetailsCopyWith<$Res> {
  _$ItemDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? qty = freezed,
    Object? qtyType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      qtyType: freezed == qtyType
          ? _value.qtyType
          : qtyType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemDetailsCopyWith<$Res>
    implements $ItemDetailsCopyWith<$Res> {
  factory _$$_ItemDetailsCopyWith(
          _$_ItemDetails value, $Res Function(_$_ItemDetails) then) =
      __$$_ItemDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? categoryId,
      String? thumbnail,
      double? price,
      double? offerPrice,
      int? qty,
      String? qtyType});
}

/// @nodoc
class __$$_ItemDetailsCopyWithImpl<$Res>
    extends _$ItemDetailsCopyWithImpl<$Res, _$_ItemDetails>
    implements _$$_ItemDetailsCopyWith<$Res> {
  __$$_ItemDetailsCopyWithImpl(
      _$_ItemDetails _value, $Res Function(_$_ItemDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? thumbnail = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? qty = freezed,
    Object? qtyType = freezed,
  }) {
    return _then(_$_ItemDetails(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      qtyType: freezed == qtyType
          ? _value.qtyType
          : qtyType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemDetails implements _ItemDetails {
  _$_ItemDetails(
      {this.id,
      this.categoryId,
      this.thumbnail,
      this.price,
      this.offerPrice,
      this.qty,
      this.qtyType});

  factory _$_ItemDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ItemDetailsFromJson(json);

  @override
  final String? id;
  @override
  final String? categoryId;
  @override
  final String? thumbnail;
  @override
  final double? price;
  @override
  final double? offerPrice;
  @override
  final int? qty;
  @override
  final String? qtyType;

  @override
  String toString() {
    return 'ItemDetails(id: $id, categoryId: $categoryId, thumbnail: $thumbnail, price: $price, offerPrice: $offerPrice, qty: $qty, qtyType: $qtyType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.qtyType, qtyType) || other.qtyType == qtyType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, categoryId, thumbnail, price, offerPrice, qty, qtyType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemDetailsCopyWith<_$_ItemDetails> get copyWith =>
      __$$_ItemDetailsCopyWithImpl<_$_ItemDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemDetailsToJson(
      this,
    );
  }
}

abstract class _ItemDetails implements ItemDetails {
  factory _ItemDetails(
      {final String? id,
      final String? categoryId,
      final String? thumbnail,
      final double? price,
      final double? offerPrice,
      final int? qty,
      final String? qtyType}) = _$_ItemDetails;

  factory _ItemDetails.fromJson(Map<String, dynamic> json) =
      _$_ItemDetails.fromJson;

  @override
  String? get id;
  @override
  String? get categoryId;
  @override
  String? get thumbnail;
  @override
  double? get price;
  @override
  double? get offerPrice;
  @override
  int? get qty;
  @override
  String? get qtyType;
  @override
  @JsonKey(ignore: true)
  _$$_ItemDetailsCopyWith<_$_ItemDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
