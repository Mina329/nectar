import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
	factory Image({
		String? id,
		String? image,
	}) = _Image;

	factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}