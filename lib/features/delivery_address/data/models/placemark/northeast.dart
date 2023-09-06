import 'package:freezed_annotation/freezed_annotation.dart';

part 'northeast.freezed.dart';
part 'northeast.g.dart';

@freezed
class Northeast with _$Northeast {
	factory Northeast({
		double? lat,
		double? lng,
	}) = _Northeast;

	factory Northeast.fromJson(Map<String, dynamic> json) => _$NortheastFromJson(json);
}