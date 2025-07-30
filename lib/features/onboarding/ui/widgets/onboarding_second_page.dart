import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_bloc.dart';
import 'package:plantapp/features/onboarding/blocs/onboarding_event.dart';
import 'package:plantapp/features/onboarding/ui/widgets/highlighted_text_widget.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/button/hover_button.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class OnboardingSecondPage extends StatelessWidget {
    final PageController pageController;

  const OnboardingSecondPage({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: HighlightedTextWidget(
            preText: LocaleKeys.onboarding_second_page_pre_text.tr(),
            highlightedText:
                LocaleKeys.onboarding_second_page_underlined_text.tr(),
          ),
        ),
        SizedBox(height: 16.v),
        Expanded(
          child: CustomImageView(
            imagePath: ImageConstant.imgOnboardingSecondPage,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: HoverButton(
            text: LocaleKeys.buttons_continue.tr(),
            onPressed: () async {
              context.read<OnboardingBloc>().add(PageChanged(2));
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ),
      ],
    );
  }
}