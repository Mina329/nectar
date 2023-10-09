import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
	factory Address({
		String? id,
		String? userId,
		String? buildingNumber,
		String? apartmentNumber,
		String? floorNumber,
		double? lat,
		double? lng,
		bool? isDefault,
	}) = _Address;

	factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
}