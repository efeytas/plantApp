import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plantapp/core/locale_keys.g.dart';
import 'package:plantapp/features/home/blocs/home_bloc.dart';
import 'package:plantapp/features/home/blocs/home_event.dart';
import 'package:plantapp/features/home/ui/widgets/paywall_features_widget.dart';
import 'package:plantapp/features/home/ui/widgets/subscription_option_widget.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/theme/primary_colors.dart';
import 'package:plantapp/shared/utils/image_constant.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/button/hover_button.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class PaywallPage extends StatefulWidget {
  const PaywallPage({super.key});

  @override
  State<PaywallPage> createState() => _PaywallPageState();
}

class _PaywallPageState extends State<PaywallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: PrimaryColors().darkGreenBackground,
      body: Stack(
        children: [
          CustomImageView(
            width: double.infinity,
            height: 480.v,
            imagePath: ImageConstant.paywallBackground,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 280.v,
              bottom: MediaQuery.of(context).padding.bottom,
              right: 20.h,
              left: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.logoPlantApp,
                      height: 32.v,
                      width: 130.h,
                    ),
                    SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        LocaleKeys.paywall_premium.tr(),
                        style: CustomTextStyle.lightHeadline.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  LocaleKeys.paywall_access_all.tr(),
                  style: CustomTextStyle.lightTitleMedium.copyWith(
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
                ),
                SizedBox(height: 12.v),
                _paywallFeatures(context),
                SizedBox(height: 16.v),
                _paymentOptions(context),
                SizedBox(height: 16.v),
                _buttonAndInformationText(context),
              ],
            ),
          ),
          _closeIcon(context),
        ],
      ),
    );
  }

  Widget _buttonAndInformationText(BuildContext context) {
    return Column(
      children: [
        HoverButton(text: LocaleKeys.paywall_try_3_days_free.tr(), 
        onPressed: () async{
        }),
        SizedBox(height: 8.v),
        Text(
          LocaleKeys.paywall_3_day_desc.tr(),
          textAlign: TextAlign.center,
          style: CustomTextStyle.informationText,
        ),
        SizedBox(height: 4.v),
        Text(
          LocaleKeys.paywall_terms_and_conditions.tr(),
          textAlign: TextAlign.center,
          style: CustomTextStyle.bodySmall.copyWith(
            color: Colors.white.withValues(alpha: 0.7),)
        ),
      ],
    );
  }

  Widget _paywallFeatures(BuildContext context) {
    return SizedBox(
      height: 120.v,
      child: ListView.separated(
        itemBuilder: (context, index) {
          return PaywallFeaturesWidget(
            imagePath:
                context
                    .watch<HomeBloc>()
                    .state
                    .paywallFeatures[index]
                    .imagePath,
            title: context.watch<HomeBloc>().state.paywallFeatures[index].title,
            description:
                context
                    .watch<HomeBloc>()
                    .state
                    .paywallFeatures[index]
                    .description,
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 8.h),
        itemCount: context.watch<HomeBloc>().state.paywallFeatures.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  Widget _paymentOptions(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder:
          (context, index) => GestureDetector(
            onTap: () {
              context.read<HomeBloc>().add(SubscriptionOptionSelected(index));
            },
            child: SubscriptionOptionWidget(
              subscriptionOption:
                  context.watch<HomeBloc>().state.subscriptionOptions[index],
            ),
          ),
      separatorBuilder: (context, index) => SizedBox(height: 16.v),
      itemCount: context.watch<HomeBloc>().state.subscriptionOptions.length,
    );
  }

  Widget _closeIcon(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).padding.top,
      right: 20.h,
      child: GestureDetector(
        onTap: () {
          context.read<HomeBloc>().add(PaywallVisibilityToggled(false));
        },
        child: Container(
          width: 24.h,
          height: 24.v,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.8), // siyah daire
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Icon(Icons.close, color: Colors.white, size: 18.v),
          ),
        ),
      ),
    );
  }
}
