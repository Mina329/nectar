import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.freezed.dart';
part 'title.g.dart';

@freezed
class Title with _$Title {
	factory Title({
		int? start,
		int? end,
	}) = _Title;

	factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
}