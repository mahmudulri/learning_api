import 'package:get/get.dart';
import 'package:learning_apifetch/postfetch/post_network.dart';
import 'package:learning_apifetch/postfetch/postmodel.dart';

class PostController extends GetxController {
  @override
  void onInit() {
    fetchAllpostData();
    super.onInit();
  }

  var isLoading = false.obs;

  var allmypost = <PostModel>[].obs;

  void fetchAllpostData() async {
    try {
      isLoading(true);
      var allfinalpost = await PostApi.fetPostData();
      if (allfinalpost != null) {
        allmypost.assignAll(allfinalpost);
      }
    } finally {
      isLoading(false);
    }
  }
}
