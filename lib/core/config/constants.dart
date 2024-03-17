import 'package:flutter/material.dart';
import 'package:news_app/main.dart';

class Constants {
  static var mediaQuery =
      MediaQuery.of(navigatorKey.currentState!.context).size;
  static var theme = Theme.of(navigatorKey.currentState!.context);
  static const String apiKey="7d2eedb8835d47628ce86662fbf29fcd";
  static const String baseURL="newsapi.org";
}
