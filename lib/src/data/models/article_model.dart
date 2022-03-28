import 'package:newsapp_clean_arch/src/data/models/source_model.dart';
import 'package:newsapp_clean_arch/src/domain/entities/article.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required int id,
    required SourceModel source,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required String publishedAt,
    required String content,
  }) : super(
          id: id,
          source: source,
          author: author,
          title: title,
          description: description,
          url: url,
          urlToImage: urlToImage,
          publishedAt: publishedAt,
          content: content,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      urlToImage: map['urlToImage'] as String,
      publishedAt: map['publishedAt'] as String,
      content: map['content'] as String,
      id: map['id'] as int,
    );
  }
}
