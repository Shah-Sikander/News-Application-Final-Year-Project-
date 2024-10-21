
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fyp/model/categories_news_model.dart';
import 'package:fyp/model/news_channels_headlines_model.dart';
import 'package:http/http.dart' as http;

class NewsRepository{

Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(String channelName)async{

  String url = 'https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=aecae3bf0818485d89a94be85a57785d';
  print(url);

  final response = await http.get(Uri.parse(url));

  if (kDebugMode) {
    print(response.body);
  }

  if (response.statusCode == 200){

    final body = jsonDecode(response.body);
    return NewsChannelsHeadlinesModel.fromJson(body);
  }
  throw Exception('Error');
}


Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category)async{

  String url = 'https://newsapi.org/v2/everything?q=${category}&apiKey=aecae3bf0818485d89a94be85a57785d';
  print(url);

  final response = await http.get(Uri.parse(url));

  if (kDebugMode) {
    print(response.body);
  }

  if (response.statusCode == 200){

    final body = jsonDecode(response.body);
    return CategoriesNewsModel.fromJson(body);
  }
  throw Exception('Error');
}


}