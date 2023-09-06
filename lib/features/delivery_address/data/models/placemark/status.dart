import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';
part 'status.g.dart';

@freezed
class Status with _$Status {
	factory Status({
		int? code,
		String? message,
	}) = _Status;

	factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}