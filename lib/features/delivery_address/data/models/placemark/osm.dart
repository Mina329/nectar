import 'package:freezed_annotation/freezed_annotation.dart';

part 'osm.freezed.dart';
part 'osm.g.dart';

@freezed
class Osm with _$Osm {
  factory Osm({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'edit_url') String? editUrl,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'note_url') String? noteUrl,
    String? url,
  }) = _Osm;

  factory Osm.fromJson(Map<String, dynamic> json) => _$OsmFromJson(json);
}
