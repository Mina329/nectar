import 'package:freezed_annotation/freezed_annotation.dart';

part 'label.freezed.dart';
part 'label.g.dart';

@freezed
class Label with _$Label {
	factory Label({
		int? start,
		int? end,
	}) = _Label;

	factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
}