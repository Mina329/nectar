import 'package:freezed_annotation/freezed_annotation.dart';

import 'currency.dart';
import 'dms.dart';
import 'mercator.dart';
import 'osm.dart';
import 'roadinfo.dart';
import 'sun.dart';
import 'timezone.dart';
import 'un_m49.dart';
import 'what3words.dart';

part 'annotations.freezed.dart';
part 'annotations.g.dart';

@freezed
class Annotations with _$Annotations {
  factory Annotations({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'DMS') Dms? dms,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'MGRS') String? mgrs,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'Maidenhead') String? maidenhead,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'Mercator') Mercator? mercator,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'OSM') Osm? osm,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'UN_M49') UnM49? unM49,
    int? callingcode,
    Currency? currency,
    String? flag,
    String? geohash,
    double? qibla,
    Roadinfo? roadinfo,
    Sun? sun,
    Timezone? timezone,
    What3words? what3words,
  }) = _Annotations;

  factory Annotations.fromJson(Map<String, dynamic> json) =>
      _$AnnotationsFromJson(json);
}
