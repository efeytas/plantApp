import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_bloc.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_state.dart';
import 'package:plantapp/features/onboarding/ui/widgets/onboarding_first_page.dart';
import 'package:plantapp/features/onboarding/ui/widgets/onboarding_second_page.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingBloc(),
      child: _OnboardingView(),
    );
  }
}

class _OnboardingView extends StatelessWidget {
  const _OnboardingView();

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Scaffold(
      body: Stack(
        children: [
          CustomImageView(
            imagePath: context.watch<OnboardingBloc>().state.currentPageIndex == 0 ? ImageConstant.onboardingFirstPageBackground : ImageConstant.onboardingSecondPageBackground,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    pageSnapping: true,
                    controller: pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      OnboardingFirstPage(pageController: pageController),
                      OnboardingSecondPage( pageController: pageController),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                _buildIndicator(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator() {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 4.h),
              width:
                  context.read<OnboardingBloc>().state.currentPageIndex == index
                      ? 12.h
                      : 8.h,
              height:
                  context.read<OnboardingBloc>().state.currentPageIndex == index
                      ? 12.h
                      : 8.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    state.currentPageIndex == index
                        ? ColorSchemes.primaryColorScheme.onSurface
                        : ColorSchemes.primaryColorScheme.onSurface.withValues(
                          alpha: 0.25,
                        ),
              ),
            );
          }),
        );
      },
    );
  }
}
