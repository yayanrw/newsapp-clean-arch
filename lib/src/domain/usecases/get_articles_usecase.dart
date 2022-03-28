import 'package:newsapp_clean_arch/src/core/params/article_request.dart';
import 'package:newsapp_clean_arch/src/core/resources/data_state.dart';
import 'package:newsapp_clean_arch/src/core/usecases/usecase.dart';
import 'package:newsapp_clean_arch/src/domain/entities/article.dart';
import 'package:newsapp_clean_arch/src/domain/repositories/articles_repository.dart';

class GetArticlesUseCase
    implements UseCase<DataState<List<Article>>, ArticlesRequestParams> {
  GetArticlesUseCase(this._articlesRepository);

  final ArticlesRepository _articlesRepository;

  @override
  Future<DataState<List<Article>>> call({ArticlesRequestParams? params}) {
    return _articlesRepository.getBreakingNewsArticles(params!);
  }
}
