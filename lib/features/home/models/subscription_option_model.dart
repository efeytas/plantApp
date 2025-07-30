import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_option_model.freezed.dart';
part 'subscription_option_model.g.dart';

@freezed
class SubscriptionOptionModel with _$SubscriptionOptionModel {
  const factory SubscriptionOptionModel({
    required String title,
    required String description,
    @Default(false) bool isSelected,
    @Default(false) bool isPromoted,
    String? promotionText,
  }) = _SubscriptionOptionModel;

  factory SubscriptionOptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionOptionModelFromJson(json);
}
