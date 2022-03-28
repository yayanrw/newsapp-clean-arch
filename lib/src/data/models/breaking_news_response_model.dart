import 'package:newsapp_clean_arch/src/data/models/article_model.dart';

class BreakingNewsResponseModel {
  BreakingNewsResponseModel({
    required this.status,
    required this.totalResults,
    required this.articles,
  });

  factory BreakingNewsResponseModel.fromJson(Map<String, dynamic> json) {
    return BreakingNewsResponseModel(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      articles: List<ArticleModel>.from(
        (json['articles'] as List<dynamic>).map(
          // ignore: always_specify_types
          (e) => ArticleModel.fromJson(e as Map<String, dynamic>),
        ),
      ),
    );
  }

  final String status;
  final int totalResults;
  final List<ArticleModel> articles;
}
