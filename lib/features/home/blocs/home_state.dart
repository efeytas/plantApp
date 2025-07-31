import 'package:plantapp/core/app_state.dart';
import 'package:plantapp/features/home/models/paywall_feature_model.dart';
import 'package:plantapp/features/home/models/response/categories_response.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';
import 'package:plantapp/features/home/models/subscription_option_model.dart';

class HomeState {
  final ServiceStatus status;
  final ServiceStatus categoriesStatus;
  final List<PaywallFeatureModel> paywallFeatures;
  final List<SubscriptionOptionModel> subscriptionOptions;
  final bool isVisiblePaywall;
  final String? errorMessage;
  final List<QuestionsResponse> questions;
  final CategoriesResponse? categories;

  HomeState({
    this.status = ServiceStatus.initial,
    this.categoriesStatus = ServiceStatus.initial,
    this.paywallFeatures = const [],
    this.subscriptionOptions = const [],
    this.isVisiblePaywall = true,
    this.errorMessage,
    this.questions = const [],
    this.categories,
  });

  HomeState copyWith({
    ServiceStatus? status,
    ServiceStatus? categoriesStatus,
    List<PaywallFeatureModel>? paywallFeatures,
    List<SubscriptionOptionModel>? subscriptionOptions,
    bool? isVisiblePaywall,
    String? errorMessage,
    List<QuestionsResponse>? questions,
    CategoriesResponse? categories,
  }) {
    return HomeState(
      status: status ?? this.status,
      categoriesStatus: status ?? this.categoriesStatus,
      paywallFeatures: paywallFeatures ?? this.paywallFeatures,
      subscriptionOptions: subscriptionOptions ?? this.subscriptionOptions,
      isVisiblePaywall: isVisiblePaywall ?? this.isVisiblePaywall,
      errorMessage: errorMessage ?? this.errorMessage,
      questions: questions ?? this.questions,
      categories: categories ?? this.categories,
    );
  }

  factory HomeState.initial() => HomeState();
}
