import 'package:flutter/material.dart';
import 'package:plantapp/features/home/models/response/categories_response.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/utils/string_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class CategoriesWidget extends StatelessWidget {
  final Category category;
  const CategoriesWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.v,
      height: 152.v,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFF29BB89).withValues(alpha: 0.18)),
      ),
      child: Stack(
        children: [
          Visibility(
            visible: category.image?.url != null,
            child: Positioned(
              bottom: 0,
              right: 0,
              child: CustomImageView(
                height: 130.v,
                imagePath: category.image?.url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.v),
            child: Text(
              category.name?.upperCasedFormat ?? 'Unknown Category',
              style: CustomTextStyle.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
