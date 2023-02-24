import 'package:http/http.dart' as http;
import 'package:learning_apifetch/userfetch/usermodel.dart';

class UserApi {
  static var client = http.Client();

  static Future<List<UserModel>?> getUsers() async {
    var response = await client
        .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

    if (response.statusCode == 200) {
      var userdata = response.body;
      // print(userdata);
      return userModelFromJson(userdata);
    }
  }
}
