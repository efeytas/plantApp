import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/shared/widgets/button/bloc/button_event.dart';
import 'package:plantapp/shared/widgets/button/bloc/button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonInitial()) {
    on<StartLoading>((event, emit) async {
      emit(ButtonInProgress());
    });

    on<HoverStarted>((event, emit) {
      emit(ButtonHover());
    });

    on<HoverEnded>((event, emit) {
      emit(ButtonInitial());
    });

    on<EndLoading>((event, emit) {
      emit(ButtonFinished());
    });
  }
}
