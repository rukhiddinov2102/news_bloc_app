import 'package:bloc_news/models/article_model.dart';
import 'package:equatable/equatable.dart';

class NewsStates extends Equatable{
  const NewsStates();

  @override
  List<Object> get props => [];

  
}

class NewsInitstate extends NewsStates{}

class NewsLoadingState extends NewsStates{}

class NewsLoadedState extends NewsStates{
  final List<ArticleModel>? articleList;
  const NewsLoadedState({required this.articleList});


}


class NewsErrorState extends NewsStates{
  final String? errorMessage;
 const NewsErrorState({required this.errorMessage});
}