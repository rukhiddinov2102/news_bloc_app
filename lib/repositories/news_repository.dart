import 'dart:convert';
import '../models/article_model.dart';

import 'package:http/http.dart' as http;

class NewsRepository{
  Future<List<ArticleModel>>fetchNews()async{
    var response = await http.get(Uri.parse("https://newsapi.org/v2/top-headlines?country=us&apiKey=0ec04af585ad4a52b57d911ef91620a"));

    var data = jsonDecode(response.body);

    List<ArticleModel> _articleModelList = [];


    if(response.statusCode == 200){
      for(var item in data["articles"]){
        ArticleModel _articleModel = ArticleModel.fromJson(item);
        _articleModelList.add(_articleModel);
      }
      return _articleModelList;
    }else{
      return _articleModelList;
    }
     

  }
}