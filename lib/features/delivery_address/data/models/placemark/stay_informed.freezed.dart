// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stay_informed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StayInformed _$StayInformedFromJson(Map<String, dynamic> json) {
  return _StayInformed.fromJson(json);
}

/// @nodoc
mixin _$StayInformed {
  String? get blog => throw _privateConstructorUsedError;
  String? get mastodon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StayInformedCopyWith<StayInformed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StayInformedCopyWith<$Res> {
  factory $StayInformedCopyWith(
          StayInformed value, $Res Function(StayInformed) then) =
      _$StayInformedCopyWithImpl<$Res, StayInformed>;
  @useResult
  $Res call({String? blog, String? mastodon});
}

/// @nodoc
class _$StayInformedCopyWithImpl<$Res, $Val extends StayInformed>
    implements $StayInformedCopyWith<$Res> {
  _$StayInformedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = freezed,
    Object? mastodon = freezed,
  }) {
    return _then(_value.copyWith(
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      mastodon: freezed == mastodon
          ? _value.mastodon
          : mastodon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StayInformedCopyWith<$Res>
    implements $StayInformedCopyWith<$Res> {
  factory _$$_StayInformedCopyWith(
          _$_StayInformed value, $Res Function(_$_StayInformed) then) =
      __$$_StayInformedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? blog, String? mastodon});
}

/// @nodoc
class __$$_StayInformedCopyWithImpl<$Res>
    extends _$StayInformedCopyWithImpl<$Res, _$_StayInformed>
    implements _$$_StayInformedCopyWith<$Res> {
  __$$_StayInformedCopyWithImpl(
      _$_StayInformed _value, $Res Function(_$_StayInformed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = freezed,
    Object? mastodon = freezed,
  }) {
    return _then(_$_StayInformed(
      blog: freezed == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as String?,
      mastodon: freezed == mastodon
          ? _value.mastodon
          : mastodon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StayInformed implements _StayInformed {
  _$_StayInformed({this.blog, this.mastodon});

  factory _$_StayInformed.fromJson(Map<String, dynamic> json) =>
      _$$_StayInformedFromJson(json);

  @override
  final String? blog;
  @override
  final String? mastodon;

  @override
  String toString() {
    return 'StayInformed(blog: $blog, mastodon: $mastodon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StayInformed &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.mastodon, mastodon) ||
                other.mastodon == mastodon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, blog, mastodon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StayInformedCopyWith<_$_StayInformed> get copyWith =>
      __$$_StayInformedCopyWithImpl<_$_StayInformed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StayInformedToJson(
      this,
    );
  }
}

abstract class _StayInformed implements StayInformed {
  factory _StayInformed({final String? blog, final String? mastodon}) =
      _$_StayInformed;

  factory _StayInformed.fromJson(Map<String, dynamic> json) =
      _$_StayInformed.fromJson;

  @override
  String? get blog;
  @override
  String? get mastodon;
  @override
  @JsonKey(ignore: true)
  _$$_StayInformedCopyWith<_$_StayInformed> get copyWith =>
      throw _privateConstructorUsedError;
}
