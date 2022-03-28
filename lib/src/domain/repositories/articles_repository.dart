import 'package:newsapp_clean_arch/src/core/params/article_request.dart';
import 'package:newsapp_clean_arch/src/core/resources/data_state.dart';
import 'package:newsapp_clean_arch/src/domain/entities/article.dart';

abstract class ArticlesRepository {
  Future<DataState<List<Article>>> getBreakingNewsArticles(
    ArticlesRequestParams params,
  );
}
