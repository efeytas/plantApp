import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/features/home/blocs/home_state.dart';
import 'package:plantapp/features/home/models/subscription_option_model.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<SubscriptionOptionSelected>((event, emit) {
      final updatedOptions =
          state.subscriptionOptions.asMap().entries.map((entry) {
            final index = entry.key;
            final option = entry.value;

            return SubscriptionOptionModel(
              title: option.title,
              description: option.description,
              isSelected: index == event.index,
              isPromoted: option.isPromoted,
              promotionText: option.promotionText,
            );
          }).toList();

      emit(state.copyWith(subscriptionOptions: updatedOptions));
    });
    on<PaywallVisibilityToggled>((event, emit) {
      emit(state.copyWith(isVisiblePaywall: event.isVisible));
    });
  }
}
