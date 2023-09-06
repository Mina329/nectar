import 'package:freezed_annotation/freezed_annotation.dart';

part 'roadinfo.freezed.dart';
part 'roadinfo.g.dart';

@freezed
class Roadinfo with _$Roadinfo {
  factory Roadinfo({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'drive_on') String? driveOn,
    String? road,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'speed_in') String? speedIn,
  }) = _Roadinfo;

  factory Roadinfo.fromJson(Map<String, dynamic> json) =>
      _$RoadinfoFromJson(json);
}
