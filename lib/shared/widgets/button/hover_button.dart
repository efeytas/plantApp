import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/shared/widgets/button/bloc/button_bloc.dart';
import 'package:plantapp/shared/widgets/button/bloc/button_event.dart';
import 'package:plantapp/shared/widgets/button/bloc/button_state.dart';
import 'package:plantapp/shared/widgets/button/custom_primary_button.dart';

class HoverButton extends StatelessWidget {
  final String text;
  final Future<void> Function()? onPressed;
  const HoverButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ButtonBloc(),
      child: BlocBuilder<ButtonBloc, ButtonState>(
        builder: (context, state) {
          return MouseRegion(
            onEnter: (_) => context.read<ButtonBloc>().add(HoverStarted()),
            onExit: (_) => context.read<ButtonBloc>().add(HoverEnded()),
            child: CustomPrimaryButton(
              text: text,
              isLoading: state is ButtonHover || state is ButtonInProgress,
              onPressed: () {
                context.read<ButtonBloc>().add(StartLoading());

                onPressed?.call().then((_) {
                  context.read<ButtonBloc>().add(EndLoading());
                });
              },
            ),
          );
        },
      ),
    );
  }
}
