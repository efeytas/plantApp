import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/features/home/blocs/home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState> {
  HomeBloc() : super(HomeState()) {
    on<SubscriptionOptionSelected>((event, emit) {
      emit(state.copyWith(selectedSubscriptionIndex: event.index));
    });
  }
}