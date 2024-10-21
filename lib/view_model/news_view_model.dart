

import 'package:fyp/model/categories_news_model.dart';
import 'package:fyp/model/news_channels_headlines_model.dart';
import 'package:fyp/repository/news_repository.dart';

class NewsViewModel{
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(String channelName)async{
    final responce = await _rep.fetchNewsChannelsHeadlinesApi(channelName);
    return responce;
  }


  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{
    final responce = await _rep.fetchCategoriesNewsApi(category);
    return responce;
  }
}