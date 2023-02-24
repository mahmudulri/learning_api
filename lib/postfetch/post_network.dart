import 'package:http/http.dart' as http;
import 'package:learning_apifetch/postfetch/postmodel.dart';

class PostApi {
  static var client = http.Client();

  static Future fetPostData() async {
    var response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      var postjsonData = response.body;

      print(postjsonData);
      return postModelFromJson(postjsonData);
    }
  }
}
