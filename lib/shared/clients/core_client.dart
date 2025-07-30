import 'package:dio/dio.dart';
import 'package:plantapp/features/home/models/response/categories_response.dart';
import 'package:plantapp/features/home/models/response/questions_response.dart';
import 'package:plantapp/shared/configs/endpoints.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'core_client.g.dart';

@RestApi(baseUrl: Endpoints.baseUrl)
abstract class CoreClient {
  factory CoreClient(Dio dio, {String baseUrl}) = _CoreClient;

  @GET('/getQuestions')
  Future<String> getQuestions();

  @GET('/getCategories')
  Future<String> getCategories(
    @Query('page') int page,
    @Query('pageSize') int pageSize,
  );
}

var dio =
    Dio()
      ..options = BaseOptions(
        baseUrl: Endpoints.baseUrl,
        contentType: "application/json",
        responseType: ResponseType.plain,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      );
//if need interceptor and token management, use the following line and add TokenInterceptor on project
//..interceptors.addAll([TokenInterceptor()])
var coreClient = CoreClient(dio);
