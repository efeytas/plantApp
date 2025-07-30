import 'package:freezed_annotation/freezed_annotation.dart';

part 'paywall_feature_model.freezed.dart';
part 'paywall_feature_model.g.dart';

@freezed
class PaywallFeatureModel with _$PaywallFeatureModel {
  const factory PaywallFeatureModel({
    required String title,
    required String description,
    required String imagePath,
  }) = _PaywallFeatureModel;

  factory PaywallFeatureModel.fromJson(Map<String, dynamic> json) =>
      _$PaywallFeatureModelFromJson(json);
}
