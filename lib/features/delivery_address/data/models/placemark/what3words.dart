import 'package:freezed_annotation/freezed_annotation.dart';

part 'what3words.freezed.dart';
part 'what3words.g.dart';

@freezed
class What3words with _$What3words {
	factory What3words({
		String? words,
	}) = _What3words;

	factory What3words.fromJson(Map<String, dynamic> json) => _$What3wordsFromJson(json);
}