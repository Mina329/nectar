import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  factory Review({
    String? itemId,
    double? rating,
    String? comment,
    String? createdAt,
    User? user,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
