import 'package:freezed_annotation/freezed_annotation.dart';

import 'northeast.dart';
import 'southwest.dart';

part 'bounds.freezed.dart';
part 'bounds.g.dart';

@freezed
class Bounds with _$Bounds {
	factory Bounds({
		Northeast? northeast,
		Southwest? southwest,
	}) = _Bounds;

	factory Bounds.fromJson(Map<String, dynamic> json) => _$BoundsFromJson(json);
}