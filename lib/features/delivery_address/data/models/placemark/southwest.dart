import 'package:freezed_annotation/freezed_annotation.dart';

part 'southwest.freezed.dart';
part 'southwest.g.dart';

@freezed
class Southwest with _$Southwest {
	factory Southwest({
		double? lat,
		double? lng,
	}) = _Southwest;

	factory Southwest.fromJson(Map<String, dynamic> json) => _$SouthwestFromJson(json);
}