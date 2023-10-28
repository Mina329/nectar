import 'package:freezed_annotation/freezed_annotation.dart';

part 'stay_informed.freezed.dart';
part 'stay_informed.g.dart';

@freezed
class StayInformed with _$StayInformed {
  factory StayInformed({
    String? blog,
    String? mastodon,
  }) = _StayInformed;

  factory StayInformed.fromJson(Map<String, dynamic> json) =>
      _$StayInformedFromJson(json);
}
