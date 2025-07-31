import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/core/router.dart';
import 'package:plantapp/core/services.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/button/hover_button.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

@RoutePage()
class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomImageView(imagePath: ImageConstant.getStaredBackground, fit: BoxFit.cover, width: double.infinity, height: double.infinity),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, bottom: MediaQuery.of(context).padding.bottom),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Text.rich(
                    TextSpan(
                      text: LocaleKeys.getStarted_firstPageTitle_first.tr(),
                      style: CustomTextStyle.headline,
                      children: [TextSpan(text: LocaleKeys.getStarted_firstPageTitle_second.tr(), style: CustomTextStyle.headline.copyWith(fontWeight: FontWeight.bold))],
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Text(LocaleKeys.getStarted_firstPageSubTitle.tr(), style: CustomTextStyle.bodyMedium),
                ),
                SizedBox(height: 24.v),
                Expanded(child: CustomImageView(imagePath: ImageConstant.imgGetStarted)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: HoverButton(
                    text: LocaleKeys.buttons_getStarted.tr(),
                    onPressed: () async {
                      router.pushAndPopUntil(OnboardingRoute(), predicate: (route) => false);
                    },
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      text: LocaleKeys.getStarted_legal_text.tr(),
                      style: CustomTextStyle.bodySmall,
                      children: [
                        const TextSpan(text: '\n'),
                        TextSpan(
                          text: LocaleKeys.getStarted_terms_of_use.tr(),
                          style: CustomTextStyle.bodySmall?.copyWith(decoration: TextDecoration.underline),
                        ),

                        TextSpan(text: " & ", style: CustomTextStyle.bodySmall),
                        TextSpan(
                          text: LocaleKeys.getStarted_privacy_policy.tr(),
                          style: CustomTextStyle.bodySmall?.copyWith(decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
