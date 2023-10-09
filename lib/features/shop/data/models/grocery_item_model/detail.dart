import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail.freezed.dart';
part 'detail.g.dart';

@freezed
class Detail with _$Detail {
	factory Detail({
		String? name,
		String? lang,
		String? categoryId,
	}) = _Detail;

	factory Detail.fromJson(Map<String, dynamic> json) => _$DetailFromJson(json);
}