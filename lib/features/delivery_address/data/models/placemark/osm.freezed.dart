// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'osm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Osm _$OsmFromJson(Map<String, dynamic> json) {
  return _Osm.fromJson(json);
}

/// @nodoc
mixin _$Osm {
  @JsonKey(name: 'edit_url')
  String? get editUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'note_url')
  String? get noteUrl => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OsmCopyWith<Osm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OsmCopyWith<$Res> {
  factory $OsmCopyWith(Osm value, $Res Function(Osm) then) =
      _$OsmCopyWithImpl<$Res, Osm>;
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_url') String? editUrl,
      @JsonKey(name: 'note_url') String? noteUrl,
      String? url});
}

/// @nodoc
class _$OsmCopyWithImpl<$Res, $Val extends Osm> implements $OsmCopyWith<$Res> {
  _$OsmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editUrl = freezed,
    Object? noteUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      editUrl: freezed == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      noteUrl: freezed == noteUrl
          ? _value.noteUrl
          : noteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OsmCopyWith<$Res> implements $OsmCopyWith<$Res> {
  factory _$$_OsmCopyWith(_$_Osm value, $Res Function(_$_Osm) then) =
      __$$_OsmCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'edit_url') String? editUrl,
      @JsonKey(name: 'note_url') String? noteUrl,
      String? url});
}

/// @nodoc
class __$$_OsmCopyWithImpl<$Res> extends _$OsmCopyWithImpl<$Res, _$_Osm>
    implements _$$_OsmCopyWith<$Res> {
  __$$_OsmCopyWithImpl(_$_Osm _value, $Res Function(_$_Osm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editUrl = freezed,
    Object? noteUrl = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Osm(
      editUrl: freezed == editUrl
          ? _value.editUrl
          : editUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      noteUrl: freezed == noteUrl
          ? _value.noteUrl
          : noteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Osm implements _Osm {
  _$_Osm(
      {@JsonKey(name: 'edit_url') this.editUrl,
      @JsonKey(name: 'note_url') this.noteUrl,
      this.url});

  factory _$_Osm.fromJson(Map<String, dynamic> json) => _$$_OsmFromJson(json);

  @override
  @JsonKey(name: 'edit_url')
  final String? editUrl;
  @override
  @JsonKey(name: 'note_url')
  final String? noteUrl;
  @override
  final String? url;

  @override
  String toString() {
    return 'Osm(editUrl: $editUrl, noteUrl: $noteUrl, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Osm &&
            (identical(other.editUrl, editUrl) || other.editUrl == editUrl) &&
            (identical(other.noteUrl, noteUrl) || other.noteUrl == noteUrl) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, editUrl, noteUrl, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OsmCopyWith<_$_Osm> get copyWith =>
      __$$_OsmCopyWithImpl<_$_Osm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OsmToJson(
      this,
    );
  }
}

abstract class _Osm implements Osm {
  factory _Osm(
      {@JsonKey(name: 'edit_url') final String? editUrl,
      @JsonKey(name: 'note_url') final String? noteUrl,
      final String? url}) = _$_Osm;

  factory _Osm.fromJson(Map<String, dynamic> json) = _$_Osm.fromJson;

  @override
  @JsonKey(name: 'edit_url')
  String? get editUrl;
  @override
  @JsonKey(name: 'note_url')
  String? get noteUrl;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_OsmCopyWith<_$_Osm> get copyWith => throw _privateConstructorUsedError;
}
