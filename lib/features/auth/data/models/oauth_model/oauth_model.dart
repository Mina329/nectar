import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'oauth_model.freezed.dart';
part 'oauth_model.g.dart';

@freezed
class OauthModel with _$OauthModel {
	factory OauthModel({
		String? token,
		int? expirationDate,
		User? user,
	}) = _OauthModel;

	factory OauthModel.fromJson(Map<String, dynamic> json) => _$OauthModelFromJson(json);
}