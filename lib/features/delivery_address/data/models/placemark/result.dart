import 'package:freezed_annotation/freezed_annotation.dart';

import 'annotations.dart';
import 'bounds.dart';
import 'components.dart';
import 'geometry.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
	factory Result({
		Annotations? annotations,
		Bounds? bounds,
		Components? components,
		int? confidence,
		String? formatted,
		Geometry? geometry,
	}) = _Result;

	factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}