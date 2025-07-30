import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:plantapp/features/home/models/response/categories_response.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';
import 'package:plantapp/features/home/services/home_service.dart';
import 'package:plantapp/shared/clients/core_client.dart';
import 'package:plantapp/shared/utils/json_helper.dart'; // yeni helper dosyan

@Singleton(as: HomeService)
class ApiHomeService implements HomeService {
  @override
  Future<List<QuestionsResponse>> fetchQuestions() async {
    final jsonResponse = await coreClient.getQuestions();
    final decoded = jsonDecode(jsonResponse);

    return decodeList<QuestionsResponse>(decoded, QuestionsResponse.fromJson);
  }

  @override
  Future<CategoriesResponse> fetchCategories(int page, int pageSize) async {
    final jsonResponse = await coreClient.getCategories(page, pageSize);
    final decoded = jsonDecode(jsonResponse);

    return decodeItem<CategoriesResponse>(decoded, CategoriesResponse.fromJson);
  }
}
