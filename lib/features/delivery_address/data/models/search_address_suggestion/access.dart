import 'package:freezed_annotation/freezed_annotation.dart';

part 'access.freezed.dart';
part 'access.g.dart';

@freezed
class Access with _$Access {
	 factory   Access({
    double? lat,
    double? lng,
   }) = _Access;

	factory Access.fromJson(Map<String, dynamic> json) => _$AccessFromJson(json);

}