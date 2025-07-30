import 'package:flutter/widgets.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';
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
        ],
      ),
    );
  }
}
