import 'package:freezed_annotation/freezed_annotation.dart';

import 'license.dart';
import 'rate.dart';
import 'result.dart';
import 'status.dart';
import 'stay_informed.dart';
import 'timestamp.dart';

part 'placemark.freezed.dart';
part 'placemark.g.dart';

@freezed
class Placemark with _$Placemark {
  factory Placemark({
    String? documentation,
    List<License>? licenses,
    Rate? rate,
    List<Result>? results,
    Status? status,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'stay_informed') StayInformed? stayInformed,
    String? thanks,
    Timestamp? timestamp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _Placemark;

  factory Placemark.fromJson(Map<String, dynamic> json) =>
      _$PlacemarkFromJson(json);
}
