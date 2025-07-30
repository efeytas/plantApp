import 'package:flutter/material.dart';
import 'package:plantapp/shared/theme/primary_colors.dart';
import 'package:plantapp/shared/utils/size_utils.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? PrimaryColors().borderColor : Colors.white.withValues(alpha: 0.05),
        shape: BoxShape.circle
      ),
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 24.h,
            height: 24.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Center(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: isSelected ? 8.h : 0,
                height: isSelected ? 8.h : 0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
