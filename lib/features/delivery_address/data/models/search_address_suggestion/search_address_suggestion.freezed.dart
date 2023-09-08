// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_address_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchAddressSuggestion _$SearchAddressSuggestionFromJson(
    Map<String, dynamic> json) {
  return _SearchAddressSuggestion.fromJson(json);
}

/// @nodoc
mixin _$SearchAddressSuggestion {
  List<Item>? get items => throw _privateConstructorUsedError;
  List<dynamic>? get queryTerms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchAddressSuggestionCopyWith<SearchAddressSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAddressSuggestionCopyWith<$Res> {
  factory $SearchAddressSuggestionCopyWith(SearchAddressSuggestion value,
          $Res Function(SearchAddressSuggestion) then) =
      _$SearchAddressSuggestionCopyWithImpl<$Res, SearchAddressSuggestion>;
  @useResult
  $Res call({List<Item>? items, List<dynamic>? queryTerms});
}

/// @nodoc
class _$SearchAddressSuggestionCopyWithImpl<$Res,
        $Val extends SearchAddressSuggestion>
    implements $SearchAddressSuggestionCopyWith<$Res> {
  _$SearchAddressSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? queryTerms = freezed,
  }) {
    return _then(_value.copyWith(
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      queryTerms: freezed == queryTerms
          ? _value.queryTerms
          : queryTerms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchAddressSuggestionCopyWith<$Res>
    implements $SearchAddressSuggestionCopyWith<$Res> {
  factory _$$_SearchAddressSuggestionCopyWith(_$_SearchAddressSuggestion value,
          $Res Function(_$_SearchAddressSuggestion) then) =
      __$$_SearchAddressSuggestionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item>? items, List<dynamic>? queryTerms});
}

/// @nodoc
class __$$_SearchAddressSuggestionCopyWithImpl<$Res>
    extends _$SearchAddressSuggestionCopyWithImpl<$Res,
        _$_SearchAddressSuggestion>
    implements _$$_SearchAddressSuggestionCopyWith<$Res> {
  __$$_SearchAddressSuggestionCopyWithImpl(_$_SearchAddressSuggestion _value,
      $Res Function(_$_SearchAddressSuggestion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = freezed,
    Object? queryTerms = freezed,
  }) {
    return _then(_$_SearchAddressSuggestion(
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>?,
      queryTerms: freezed == queryTerms
          ? _value._queryTerms
          : queryTerms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchAddressSuggestion implements _SearchAddressSuggestion {
  _$_SearchAddressSuggestion(
      {final List<Item>? items, final List<dynamic>? queryTerms})
      : _items = items,
        _queryTerms = queryTerms;

  factory _$_SearchAddressSuggestion.fromJson(Map<String, dynamic> json) =>
      _$$_SearchAddressSuggestionFromJson(json);

  final List<Item>? _items;
  @override
  List<Item>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _queryTerms;
  @override
  List<dynamic>? get queryTerms {
    final value = _queryTerms;
    if (value == null) return null;
    if (_queryTerms is EqualUnmodifiableListView) return _queryTerms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchAddressSuggestion(items: $items, queryTerms: $queryTerms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchAddressSuggestion &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._queryTerms, _queryTerms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_queryTerms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchAddressSuggestionCopyWith<_$_SearchAddressSuggestion>
      get copyWith =>
          __$$_SearchAddressSuggestionCopyWithImpl<_$_SearchAddressSuggestion>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchAddressSuggestionToJson(
      this,
    );
  }
}

abstract class _SearchAddressSuggestion implements SearchAddressSuggestion {
  factory _SearchAddressSuggestion(
      {final List<Item>? items,
      final List<dynamic>? queryTerms}) = _$_SearchAddressSuggestion;

  factory _SearchAddressSuggestion.fromJson(Map<String, dynamic> json) =
      _$_SearchAddressSuggestion.fromJson;

  @override
  List<Item>? get items;
  @override
  List<dynamic>? get queryTerms;
  @override
  @JsonKey(ignore: true)
  _$$_SearchAddressSuggestionCopyWith<_$_SearchAddressSuggestion>
      get copyWith => throw _privateConstructorUsedError;
}
