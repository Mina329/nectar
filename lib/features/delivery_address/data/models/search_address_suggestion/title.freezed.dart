// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Title _$TitleFromJson(Map<String, dynamic> json) {
  return _Title.fromJson(json);
}

/// @nodoc
mixin _$Title {
  int? get start => throw _privateConstructorUsedError;
  int? get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleCopyWith<Title> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleCopyWith<$Res> {
  factory $TitleCopyWith(Title value, $Res Function(Title) then) =
      _$TitleCopyWithImpl<$Res, Title>;
  @useResult
  $Res call({int? start, int? end});
}

/// @nodoc
class _$TitleCopyWithImpl<$Res, $Val extends Title>
    implements $TitleCopyWith<$Res> {
  _$TitleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TitleCopyWith<$Res> implements $TitleCopyWith<$Res> {
  factory _$$_TitleCopyWith(_$_Title value, $Res Function(_$_Title) then) =
      __$$_TitleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? start, int? end});
}

/// @nodoc
class __$$_TitleCopyWithImpl<$Res> extends _$TitleCopyWithImpl<$Res, _$_Title>
    implements _$$_TitleCopyWith<$Res> {
  __$$_TitleCopyWithImpl(_$_Title _value, $Res Function(_$_Title) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_$_Title(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Title implements _Title {
  _$_Title({this.start, this.end});

  factory _$_Title.fromJson(Map<String, dynamic> json) =>
      _$$_TitleFromJson(json);

  @override
  final int? start;
  @override
  final int? end;

  @override
  String toString() {
    return 'Title(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Title &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleCopyWith<_$_Title> get copyWith =>
      __$$_TitleCopyWithImpl<_$_Title>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TitleToJson(
      this,
    );
  }
}

abstract class _Title implements Title {
  factory _Title({final int? start, final int? end}) = _$_Title;

  factory _Title.fromJson(Map<String, dynamic> json) = _$_Title.fromJson;

  @override
  int? get start;
  @override
  int? get end;
  @override
  @JsonKey(ignore: true)
  _$$_TitleCopyWith<_$_Title> get copyWith =>
      throw _privateConstructorUsedError;
}
