import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class DataProvider with ChangeNotifier {
  List<dynamic> postList = [];

  Future<void> getResponse() async {
    try {
      final result =
          await http.get('https://jsonplaceholder.typicode.com/posts');
      final posts = json.decode(result.body);
      for (var post in posts) {
        postList.add(post);
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
