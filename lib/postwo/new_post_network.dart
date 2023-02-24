import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learning_apifetch/postwo/new_post_model.dart';

class NewpostAPi {
  static var client = http.Client();

  static Future<List<NewPostModel>> getNewPost() async {
    List<NewPostModel> posts = [];
    var response = await http.get(Uri.parse("https://dummyjson.com/posts"));

    var data = jsonDecode(response.body)['posts'] as List;
    posts = data.map((postJson) => NewPostModel.fromJson(postJson)).toList();
    print(jsonDecode(response.body)['posts']);
    return posts;
  }
}
