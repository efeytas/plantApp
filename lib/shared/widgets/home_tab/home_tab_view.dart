import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/router.dart';
import 'package:plantapp/features/home/blocs/home_bloc.dart';
import 'package:plantapp/features/home/ui/widgets/paywall_page.dart';
import 'package:plantapp/shared/widgets/home_tab/home_tab_widget.dart';

@RoutePage()
class HomeTabView extends StatefulWidget {
  const HomeTabView({super.key});

  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      physics: const NeverScrollableScrollPhysics(),
      routes: const [
        HomeRoute(),
        DiagnoseRoute(),
        GardenRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, controller) {
        final tabsRouter = AutoTabsRouter.of(context);
        return BlocProvider(
          create: (context) => HomeBloc(),
          child: Builder(
            builder:
                (context) => Material(
                  child: Stack(
                    children: [
                      Scaffold(
                        body: child,
                        extendBody: true,
                        bottomNavigationBar: HomeTabWidget(
                          currentIndex: tabsRouter.activeIndex,
                          onTap: (index) {
                            tabsRouter.setActiveIndex(index);
                          },
                        ),
                      ),
                      AnimatedSlide(
                        offset:
                            context.watch<HomeBloc>().state.isVisiblePaywall
                                ? Offset(0, 0)
                                : Offset(0, 1),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                        child: PaywallPage(),
                      ),
                    ],
                  ),
                ),
          ),
        );
      },
    );
  }
}
