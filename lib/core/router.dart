import 'package:auto_route/auto_route.dart';
import 'package:plantapp/features/diagnose/ui/screens/diagnose_view.dart';
import 'package:plantapp/features/garden/ui/screens/garden_view.dart';
import 'package:plantapp/features/home/ui/screens/home_view.dart';
import 'package:plantapp/features/onboarding/ui/screens/get_started_view.dart';
import 'package:plantapp/features/onboarding/ui/screens/onboarding_view.dart';
import 'package:plantapp/features/profile/ui/screens/profile_view.dart';
import 'package:plantapp/shared/widgets/home_tab/home_tab_view.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: ('View,Route'))
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: HomeTabRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: DiagnoseRoute.page),
        AutoRoute(page: GardenRoute.page),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),

    AutoRoute(page: GetStartedRoute.page, initial: true),
    AutoRoute(page: OnboardingRoute.page),
  ];
}
