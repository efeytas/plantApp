import 'package:easy_localization/easy_localization.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/features/home/models/paywall_feature_model.dart';
import 'package:plantapp/features/home/models/subscription_option_model.dart';
import 'package:plantapp/shared/utils/image_constant.dart';

class HomeState {
  final List<PaywallFeatureModel> paywallFeatures;
  final List<SubscriptionOptionModel> subscriptionOptions;
  final bool isVisiblePaywall;

  HomeState({
    required this.paywallFeatures,
    required this.subscriptionOptions,
    this.isVisiblePaywall = true,
  });

  HomeState copyWith({
    List<PaywallFeatureModel>? paywallFeatures,
    List<SubscriptionOptionModel>? subscriptionOptions,
    bool? isVisiblePaywall,
  }) {
    return HomeState(
      paywallFeatures: paywallFeatures ?? this.paywallFeatures,
      subscriptionOptions: subscriptionOptions ?? this.subscriptionOptions,
      isVisiblePaywall: isVisiblePaywall ?? this.isVisiblePaywall,
    );
  }

  factory HomeState.initial() {
    return HomeState(
      paywallFeatures: [
        PaywallFeatureModel(
          title: LocaleKeys.paywall_unlimited.tr(),
          description: LocaleKeys.paywall_plant_identify.tr(),
          imagePath: ImageConstant.icScanner,
        ),
        PaywallFeatureModel(
          title: LocaleKeys.paywall_faster.tr(),
          description: LocaleKeys.paywall_process.tr(),
          imagePath: ImageConstant.icSpeedoMeter,
        ),
      ],
      subscriptionOptions: [
        SubscriptionOptionModel(
          title: LocaleKeys.paywall_one_month.tr(),
          description: LocaleKeys.paywall_one_month_price.tr(),
          isSelected: false,
          isPromoted: false,
        ),
        SubscriptionOptionModel(
          title: LocaleKeys.paywall_one_year.tr(),
          description: LocaleKeys.paywall_one_year_price.tr(),
          isSelected: true,
          isPromoted: true,
          promotionText: LocaleKeys.paywall_save_fifty.tr(),
        ),
      ],
    );
  }
}
