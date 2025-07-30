import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/features/home/blocs/home_bloc.dart';
import 'package:plantapp/features/home/ui/widgets/paywall_page.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => HomeBloc(), child: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _homeHeader(context),
          AnimatedSlide(
            offset:
                context.watch<HomeBloc>().state.isVisiblePaywall
                    ? Offset(0, 0)
                    : Offset(0, 1), // 1 -> ekranın dışı (aşağı), 0 -> görünür
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
            child: PaywallPage(),
          ),
        ],
      ),
    );
  }

  Widget _homeHeader(BuildContext context){
    return Column(
      children: [],
    );
  }
}
