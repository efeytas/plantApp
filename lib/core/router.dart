import 'package:auto_route/auto_route.dart';
import 'package:plantapp/features/home/ui/widgets/paywall_view.dart';
import 'package:plantapp/features/onboarding/ui/screens/get_started_view.dart';
import 'package:plantapp/features/onboarding/ui/screens/onboarding_view.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: ('View,Route'))
class AppRouter extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: GetStartedRoute.page, initial: true),
    AutoRoute(page: OnboardingRoute.page),
    AutoRoute(page: PaywallRoute.page),
  ];
}
