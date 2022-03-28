import 'package:dio/dio.dart';
import 'package:newsapp_clean_arch/src/core/utils/constants.dart';
import 'package:newsapp_clean_arch/src/data/models/breaking_news_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class NewsApiService {
  factory NewsApiService(Dio dio, {required String baseUrl}) = _NewsApiService;

  @GET('/top-headlines')
  Future<HttpResponse<BreakingNewsResponseModel>> getBreakingNewsArticles({
    @Query('apiKey') String apiKey,
    @Query('country') String country,
    @Query('category') String category,
    @Query('page') int page,
    @Query('pageSize') int pageSize,
  });
}
