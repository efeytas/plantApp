import 'package:plantapp/features/home/models/response/categories_response.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';

abstract class HomeService {
  Future<List<QuestionsResponse>> fetchQuestions();
  Future<CategoriesResponse> fetchCategories(int page, int pageSize);
}