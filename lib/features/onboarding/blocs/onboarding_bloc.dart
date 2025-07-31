import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/router.dart';
import 'package:plantapp/core/services.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_event.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {

  OnboardingBloc() : super(OnboardingState(currentPageIndex: 0)) {

    on<PageChanged>((event, emit) async {
      if (event.pageIndex == 2) {
        await prefsService.setFirstTimeFalse(); // kullanıcı tamamladıysa işaretle
        router.pushAndPopUntil(
          const HomeTabRoute(children: []),
          predicate: (route) => false,
        );
      }
      emit(state.copyWith(currentPageIndex: event.pageIndex));
    });
  }
}
