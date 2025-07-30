import 'package:flutter/material.dart';
import 'package:plantapp/features/home/models/subscription_option_model.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/theme/primary_colors.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/button/custom_radio_button.dart';

class SubscriptionOptionWidget extends StatelessWidget {
  final SubscriptionOptionModel subscriptionOption;
  const SubscriptionOptionWidget({super.key, required this.subscriptionOption});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(16);

    return Container(
      decoration: BoxDecoration(
        gradient:
            subscriptionOption.isSelected
                ? LinearGradient(
                  colors: [
                    ColorSchemes.primaryColorScheme.primary,
                    Color(0xFF3CBA92),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                )
                : null,
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: borderRadius,
        border:
            subscriptionOption.isSelected
                ? Border.all(color: PrimaryColors().borderColor, width: 1.5)
                : Border.all(color: Colors.grey.shade700, width: 1),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h, right: 16.h, top: 8.v, bottom: 8.v),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomRadioButton(isSelected: subscriptionOption.isSelected),
                SizedBox(width: 16.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      subscriptionOption.title,
                      style: CustomTextStyle.titleMedium.copyWith(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      subscriptionOption.description,
                      style: CustomTextStyle.bodyMedium.copyWith(
                        color: Colors.white.withValues(alpha: 0.7),
                        fontSize: 12.v,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
    
          Visibility(
            visible:
                subscriptionOption.promotionText != null &&
                subscriptionOption.isPromoted,
            child: Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
                decoration: BoxDecoration(
                  color: PrimaryColors().borderColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                child: Text(
                  subscriptionOption.promotionText ?? "",
                  style: CustomTextStyle.titleMedium.copyWith(
                    color: Colors.white,
                    fontSize: 12.v,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
