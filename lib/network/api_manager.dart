import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/core/config/constants.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/source_modell.dart';

class ApiManager {
  static Future<List<SourceModel>> fetchDataSource(String categoryId) async {
    var url = Uri.https(Constants.baseURL, "/v2/top-headlines/sources",
        {"apiKey": Constants.apiKey, "category": categoryId});
    List<SourceModel> sourcesDataList = [];
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      var data = jsonDecode(response.body);
      var sourcesList = data["sources"] as List;
      for (var element in sourcesList) {
        sourcesDataList.add(SourceModel.formJson(element));
      }
      return sourcesDataList;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
