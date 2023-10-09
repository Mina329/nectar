import 'package:freezed_annotation/freezed_annotation.dart';

import 'detail.dart';

part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
	factory Category({
		String? id,
		String? image,
		List<Detail>? details,
	}) = _Category;

	factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}