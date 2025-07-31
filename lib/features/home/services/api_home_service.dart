import 'dart:convert';

import 'package:flutter/material.dart';
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
    try {
      final jsonResponse = await coreClient.getQuestions();
      final decoded = jsonDecode(jsonResponse);
      return decodeList<QuestionsResponse>(decoded, QuestionsResponse.fromJson);
    } catch (e, stack) {
      debugPrint('Error in fetchQuestions: $e');
      debugPrintStack(stackTrace: stack);
      rethrow; // üst katmanlar da hatayı yakalayabilsin diye
    }
  }

  @override
  Future<CategoriesResponse> fetchCategories(int page, int pageSize) async {
    try {
      final jsonResponse = await coreClient.getCategories(page, pageSize);
      final decoded = jsonDecode(jsonResponse);
      return decodeItem<CategoriesResponse>(decoded, CategoriesResponse.fromJson);
    } catch (e, stack) {
      debugPrint('Error in fetchCategories (page: $page): $e');
      debugPrintStack(stackTrace: stack);
      rethrow;
    }
  }
}