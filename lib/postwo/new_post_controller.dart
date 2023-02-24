import 'package:get/get.dart';
import 'package:learning_apifetch/postwo/new_post_model.dart';
import 'package:learning_apifetch/postwo/new_post_network.dart';

class NewPostController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    getallPost();
  }

  var isloading = false.obs;

  var allpost = <NewPostModel>[].obs;

  void getallPost() async {
    try {
      isloading(true);
      var allnewfinalpost = await NewpostAPi.getNewPost();
      if (allnewfinalpost != null) {
        allpost.assignAll(allnewfinalpost);
      }
    } finally {
      isloading(false);
    }
  }
}
