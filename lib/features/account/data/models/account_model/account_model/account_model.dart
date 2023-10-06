import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel with _$AccountModel {
	factory AccountModel({
		String? id,
		String? firstName,
		String? lastName,
		String? email,
		String? phoneNumber,
		DateTime? dayOfBirth,
		String? profilePicture,
		String? role,
		List<Address>? addresses,
    String? preferedAddressId,
    String? preferedPayment,
	}) = _AccountModel;

	factory AccountModel.fromJson(Map<String, dynamic> json) => _$AccountModelFromJson(json);
}