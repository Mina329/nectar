// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroceryItemModel _$GroceryItemModelFromJson(Map<String, dynamic> json) {
  return _GroceryItemModel.fromJson(json);
}

/// @nodoc
mixin _$GroceryItemModel {
  String? get id => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String? get brandId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get offerPrice => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get quantityType => throw _privateConstructorUsedError;
  Brand? get brand => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  List<Image>? get images => throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroceryItemModelCopyWith<GroceryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroceryItemModelCopyWith<$Res> {
  factory $GroceryItemModelCopyWith(
          GroceryItemModel value, $Res Function(GroceryItemModel) then) =
      _$GroceryItemModelCopyWithImpl<$Res, GroceryItemModel>;
  @useResult
  $Res call(
      {String? id,
      String? categoryId,
      String? brandId,
      String? name,
      String? thumbnail,
      String? description,
      double? price,
      double? offerPrice,
      int? quantity,
      String? quantityType,
      Brand? brand,
      Category? category,
      List<Image>? images,
      List<Review>? reviews,
      bool? isFavorite});

  $BrandCopyWith<$Res>? get brand;
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$GroceryItemModelCopyWithImpl<$Res, $Val extends GroceryItemModel>
    implements $GroceryItemModelCopyWith<$Res> {
  _$GroceryItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? brandId = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? quantity = freezed,
    Object? quantityType = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? reviews = freezed,
    Object? isFavorite = freezed,
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
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityType: freezed == quantityType
          ? _value.quantityType
          : quantityType // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroceryItemModelCopyWith<$Res>
    implements $GroceryItemModelCopyWith<$Res> {
  factory _$$_GroceryItemModelCopyWith(
          _$_GroceryItemModel value, $Res Function(_$_GroceryItemModel) then) =
      __$$_GroceryItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? categoryId,
      String? brandId,
      String? name,
      String? thumbnail,
      String? description,
      double? price,
      double? offerPrice,
      int? quantity,
      String? quantityType,
      Brand? brand,
      Category? category,
      List<Image>? images,
      List<Review>? reviews,
      bool? isFavorite});

  @override
  $BrandCopyWith<$Res>? get brand;
  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_GroceryItemModelCopyWithImpl<$Res>
    extends _$GroceryItemModelCopyWithImpl<$Res, _$_GroceryItemModel>
    implements _$$_GroceryItemModelCopyWith<$Res> {
  __$$_GroceryItemModelCopyWithImpl(
      _$_GroceryItemModel _value, $Res Function(_$_GroceryItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? brandId = freezed,
    Object? name = freezed,
    Object? thumbnail = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? offerPrice = freezed,
    Object? quantity = freezed,
    Object? quantityType = freezed,
    Object? brand = freezed,
    Object? category = freezed,
    Object? images = freezed,
    Object? reviews = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_$_GroceryItemModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      offerPrice: freezed == offerPrice
          ? _value.offerPrice
          : offerPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      quantityType: freezed == quantityType
          ? _value.quantityType
          : quantityType // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as Brand?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroceryItemModel implements _GroceryItemModel {
  _$_GroceryItemModel(
      {this.id,
      this.categoryId,
      this.brandId,
      this.name,
      this.thumbnail,
      this.description,
      this.price,
      this.offerPrice,
      this.quantity,
      this.quantityType,
      this.brand,
      this.category,
      final List<Image>? images,
      final List<Review>? reviews,
      this.isFavorite})
      : _images = images,
        _reviews = reviews;

  factory _$_GroceryItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroceryItemModelFromJson(json);

  @override
  final String? id;
  @override
  final String? categoryId;
  @override
  final String? brandId;
  @override
  final String? name;
  @override
  final String? thumbnail;
  @override
  final String? description;
  @override
  final double? price;
  @override
  final double? offerPrice;
  @override
  final int? quantity;
  @override
  final String? quantityType;
  @override
  final Brand? brand;
  @override
  final Category? category;
  final List<Image>? _images;
  @override
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFavorite;

  @override
  String toString() {
    return 'GroceryItemModel(id: $id, categoryId: $categoryId, brandId: $brandId, name: $name, thumbnail: $thumbnail, description: $description, price: $price, offerPrice: $offerPrice, quantity: $quantity, quantityType: $quantityType, brand: $brand, category: $category, images: $images, reviews: $reviews, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroceryItemModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerPrice, offerPrice) ||
                other.offerPrice == offerPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityType, quantityType) ||
                other.quantityType == quantityType) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      brandId,
      name,
      thumbnail,
      description,
      price,
      offerPrice,
      quantity,
      quantityType,
      brand,
      category,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_reviews),
      isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroceryItemModelCopyWith<_$_GroceryItemModel> get copyWith =>
      __$$_GroceryItemModelCopyWithImpl<_$_GroceryItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroceryItemModelToJson(
      this,
    );
  }
}

abstract class _GroceryItemModel implements GroceryItemModel {
  factory _GroceryItemModel(
      {final String? id,
      final String? categoryId,
      final String? brandId,
      final String? name,
      final String? thumbnail,
      final String? description,
      final double? price,
      final double? offerPrice,
      final int? quantity,
      final String? quantityType,
      final Brand? brand,
      final Category? category,
      final List<Image>? images,
      final List<Review>? reviews,
      final bool? isFavorite}) = _$_GroceryItemModel;

  factory _GroceryItemModel.fromJson(Map<String, dynamic> json) =
      _$_GroceryItemModel.fromJson;

  @override
  String? get id;
  @override
  String? get categoryId;
  @override
  String? get brandId;
  @override
  String? get name;
  @override
  String? get thumbnail;
  @override
  String? get description;
  @override
  double? get price;
  @override
  double? get offerPrice;
  @override
  int? get quantity;
  @override
  String? get quantityType;
  @override
  Brand? get brand;
  @override
  Category? get category;
  @override
  List<Image>? get images;
  @override
  List<Review>? get reviews;
  @override
  bool? get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$_GroceryItemModelCopyWith<_$_GroceryItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
