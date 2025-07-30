import 'package:flutter/material.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class PaywallFeaturesWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const PaywallFeaturesWidget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white.withValues(alpha: 0.08),
      ),
      width: 150.h,
      padding: EdgeInsets.only(top: 16.v, left: 20.h, right: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1A2A23),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 36.v,
            height: 36.v,
            child: Center(
              child: CustomImageView(imagePath: imagePath, height: 18.v),
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            title,
            style: CustomTextStyle.titleMedium?.copyWith(color: Colors.white),
          ),
          SizedBox(height: 4.v),
          Text(
            description,
            style: CustomTextStyle.bodyMedium?.copyWith(
              fontSize: 13.v,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
