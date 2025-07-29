import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/features/onboarding/ui/widgets/onboarding_first_page.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: MediaQuery.of(context).padding.bottom),
        child: OnboardingFirstPage(),
      ),
    );
  }
}
