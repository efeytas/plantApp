import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/services.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/features/home/blocs/home_state.dart';
import 'package:plantapp/features/home/models/subscription_option_model.dart';
import 'package:plantapp/features/home/models/paywall_feature_model.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:easy_localization/easy_localization.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<LoadHomeData>(_onLoadHomeData);
    on<SubscriptionOptionSelected>(_onSubscriptionOptionSelected);
    on<PaywallVisibilityToggled>(_onPaywallVisibilityToggled);

    add(LoadHomeData());
  }

  Future<void> _onLoadHomeData(
    LoadHomeData event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: HomeStatus.loading));

    try {
      final features = [
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
        PaywallFeatureModel(
          title: LocaleKeys.paywall_faster.tr(),
          description: LocaleKeys.paywall_process.tr(),
          imagePath: ImageConstant.icSpeedoMeter,
        ),
        PaywallFeatureModel(
          title: LocaleKeys.paywall_faster.tr(),
          description: LocaleKeys.paywall_process.tr(),
          imagePath: ImageConstant.icSpeedoMeter,
        ),
      ];

      final options = [
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
      ];

      emit(
        state.copyWith(paywallFeatures: features, subscriptionOptions: options),
      );
      final questions = await homeService.fetchQuestions();

      emit(state.copyWith(status: HomeStatus.success, questions: questions));
    } catch (e) {
      debugPrint("Error loading home data: $e");
      emit(
        state.copyWith(status: HomeStatus.failure, errorMessage: e.toString()),
      );
    }
  }

  void _onSubscriptionOptionSelected(
    SubscriptionOptionSelected event,
    Emitter<HomeState> emit,
  ) {
    for (int i = 0; i < state.subscriptionOptions.length; i++) {
      state.subscriptionOptions[i] = state.subscriptionOptions[i].copyWith(isSelected: i == event.index);
    }

    // Listeyi yeniden oluşturmak, UI'ı tetiklemek için gerekli olabilir
    emit(
      state.copyWith(subscriptionOptions: List.from(state.subscriptionOptions)),
    );
  }

  void _onPaywallVisibilityToggled(
    PaywallVisibilityToggled event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(isVisiblePaywall: event.isVisible));
  }
}
