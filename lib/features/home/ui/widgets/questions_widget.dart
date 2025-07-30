import 'package:flutter/material.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';
import 'package:plantapp/shared/theme/custom_text_style.dart';
import 'package:plantapp/shared/utils/size_utils.dart';
import 'package:plantapp/shared/widgets/custom_image_view.dart';

class QuestionsWidget extends StatelessWidget {
  final QuestionsResponse? questionsResponse;
  const QuestionsWidget({super.key, this.questionsResponse});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.h,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CustomImageView(
              imagePath: questionsResponse?.imagePath ?? "",
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            bottom: (questionsResponse?.title?.length ?? 0) >= 25 ? 15.v : 25.v,
            left: 14.h,
            right: 14.h,
            child: Container(
              alignment: Alignment.centerLeft,
              width: 240.h,
              child: Text(
                questionsResponse?.title ?? "",
                style: CustomTextStyle.titleMedium?.copyWith(color: Colors.white,
                fontSize: 15.fSize,),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
