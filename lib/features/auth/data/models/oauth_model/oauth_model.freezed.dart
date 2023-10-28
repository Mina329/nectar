// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OauthModel _$OauthModelFromJson(Map<String, dynamic> json) {
  return _OauthModel.fromJson(json);
}

/// @nodoc
mixin _$OauthModel {
  String? get token => throw _privateConstructorUsedError;
  int? get expirationDate => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OauthModelCopyWith<OauthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OauthModelCopyWith<$Res> {
  factory $OauthModelCopyWith(
          OauthModel value, $Res Function(OauthModel) then) =
      _$OauthModelCopyWithImpl<$Res, OauthModel>;
  @useResult
  $Res call({String? token, int? expirationDate, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$OauthModelCopyWithImpl<$Res, $Val extends OauthModel>
    implements $OauthModelCopyWith<$Res> {
  _$OauthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expirationDate = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OauthModelCopyWith<$Res>
    implements $OauthModelCopyWith<$Res> {
  factory _$$_OauthModelCopyWith(
          _$_OauthModel value, $Res Function(_$_OauthModel) then) =
      __$$_OauthModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, int? expirationDate, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_OauthModelCopyWithImpl<$Res>
    extends _$OauthModelCopyWithImpl<$Res, _$_OauthModel>
    implements _$$_OauthModelCopyWith<$Res> {
  __$$_OauthModelCopyWithImpl(
      _$_OauthModel _value, $Res Function(_$_OauthModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? expirationDate = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_OauthModel(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      expirationDate: freezed == expirationDate
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as int?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OauthModel implements _OauthModel {
  _$_OauthModel({this.token, this.expirationDate, this.user});

  factory _$_OauthModel.fromJson(Map<String, dynamic> json) =>
      _$$_OauthModelFromJson(json);

  @override
  final String? token;
  @override
  final int? expirationDate;
  @override
  final User? user;

  @override
  String toString() {
    return 'OauthModel(token: $token, expirationDate: $expirationDate, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OauthModel &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.expirationDate, expirationDate) ||
                other.expirationDate == expirationDate) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, expirationDate, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OauthModelCopyWith<_$_OauthModel> get copyWith =>
      __$$_OauthModelCopyWithImpl<_$_OauthModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OauthModelToJson(
      this,
    );
  }
}

abstract class _OauthModel implements OauthModel {
  factory _OauthModel(
      {final String? token,
      final int? expirationDate,
      final User? user}) = _$_OauthModel;

  factory _OauthModel.fromJson(Map<String, dynamic> json) =
      _$_OauthModel.fromJson;

  @override
  String? get token;
  @override
  int? get expirationDate;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_OauthModelCopyWith<_$_OauthModel> get copyWith =>
      throw _privateConstructorUsedError;
}
