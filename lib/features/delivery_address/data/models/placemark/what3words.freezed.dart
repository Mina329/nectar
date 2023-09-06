// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'what3words.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

What3words _$What3wordsFromJson(Map<String, dynamic> json) {
  return _What3words.fromJson(json);
}

/// @nodoc
mixin _$What3words {
  String? get words => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $What3wordsCopyWith<What3words> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $What3wordsCopyWith<$Res> {
  factory $What3wordsCopyWith(
          What3words value, $Res Function(What3words) then) =
      _$What3wordsCopyWithImpl<$Res, What3words>;
  @useResult
  $Res call({String? words});
}

/// @nodoc
class _$What3wordsCopyWithImpl<$Res, $Val extends What3words>
    implements $What3wordsCopyWith<$Res> {
  _$What3wordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_value.copyWith(
      words: freezed == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_What3wordsCopyWith<$Res>
    implements $What3wordsCopyWith<$Res> {
  factory _$$_What3wordsCopyWith(
          _$_What3words value, $Res Function(_$_What3words) then) =
      __$$_What3wordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? words});
}

/// @nodoc
class __$$_What3wordsCopyWithImpl<$Res>
    extends _$What3wordsCopyWithImpl<$Res, _$_What3words>
    implements _$$_What3wordsCopyWith<$Res> {
  __$$_What3wordsCopyWithImpl(
      _$_What3words _value, $Res Function(_$_What3words) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? words = freezed,
  }) {
    return _then(_$_What3words(
      words: freezed == words
          ? _value.words
          : words // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_What3words implements _What3words {
  _$_What3words({this.words});

  factory _$_What3words.fromJson(Map<String, dynamic> json) =>
      _$$_What3wordsFromJson(json);

  @override
  final String? words;

  @override
  String toString() {
    return 'What3words(words: $words)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_What3words &&
            (identical(other.words, words) || other.words == words));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, words);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_What3wordsCopyWith<_$_What3words> get copyWith =>
      __$$_What3wordsCopyWithImpl<_$_What3words>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_What3wordsToJson(
      this,
    );
  }
}

abstract class _What3words implements What3words {
  factory _What3words({final String? words}) = _$_What3words;

  factory _What3words.fromJson(Map<String, dynamic> json) =
      _$_What3words.fromJson;

  @override
  String? get words;
  @override
  @JsonKey(ignore: true)
  _$$_What3wordsCopyWith<_$_What3words> get copyWith =>
      throw _privateConstructorUsedError;
}
