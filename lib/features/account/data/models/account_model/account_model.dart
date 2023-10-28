import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'cart.dart';
import 'review.dart';

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
    List<Review>? reviews,
    List<Cart>? carts,
  }) = _AccountModel;

  factory AccountModel.fromJson(Map<String, dynamic> json) =>
      _$AccountModelFromJson(json);
}
