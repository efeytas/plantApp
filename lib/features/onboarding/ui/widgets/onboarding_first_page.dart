import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

class OnboardingFirstPage extends StatelessWidget {
  const OnboardingFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              LocaleKeys.onboarding_firstPageTitle.tr(),
              style: CustomTextStyle.headline,
            ),
            SizedBox(height: 8.v),
            Text(
              LocaleKeys.onboarding_firstPageSubTitle.tr(),
              style: CustomTextStyle.bodyMedium,
            ),
            SizedBox(height: 24.v),
            

          ],
        ),
    );

    
  }
}