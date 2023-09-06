import 'package:freezed_annotation/freezed_annotation.dart';

part 'timestamp.freezed.dart';
part 'timestamp.g.dart';

@freezed
class Timestamp with _$Timestamp {
  factory Timestamp({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_http') String? createdHttp,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_unix') int? createdUnix,
  }) = _Timestamp;

  factory Timestamp.fromJson(Map<String, dynamic> json) =>
      _$TimestampFromJson(json);
}
