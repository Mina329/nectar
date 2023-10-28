import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {
  factory License({
    String? name,
    String? url,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) =>
      _$LicenseFromJson(json);
}
