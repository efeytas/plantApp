import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plantapp/shared/theme/color_schemes.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class HomeTabItem extends StatelessWidget {
  final String? label;
  final String? imagePath;
  final bool? isSelected;
  final VoidCallback? onTap;
  const HomeTabItem({super.key, this.label, this.imagePath, this.isSelected, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        HapticFeedback.selectionClick();
        onTap?.call();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Icon
              CustomImageView(
                imagePath: imagePath ?? "",
                color: isSelected! ? ColorSchemes.primaryColorScheme.primary : const Color(0xFFBDBDBD),
              ),
            ],
          ),
          SizedBox(height: 4.v),
          Text(label ?? "",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style:CustomTextStyle.bodySmall?.copyWith(
                color: isSelected! ? ColorSchemes.primaryColorScheme.primary : ColorSchemes.primaryColorScheme.onSurface,
              )),
        ],
      ),
    );
  }
}
