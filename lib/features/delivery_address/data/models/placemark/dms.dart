import 'package:freezed_annotation/freezed_annotation.dart';

part 'dms.freezed.dart';
part 'dms.g.dart';

@freezed
class Dms with _$Dms {
  factory Dms({
    String? lat,
    String? lng,
  }) = _Dms;

  factory Dms.fromJson(Map<String, dynamic> json) => _$DmsFromJson(json);
}
