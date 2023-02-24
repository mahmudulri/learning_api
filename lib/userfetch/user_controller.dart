import 'package:get/get.dart';
import 'package:learning_apifetch/userfetch/user_network.dart';
import 'package:learning_apifetch/userfetch/usermodel.dart';

class UserController extends GetxController {
  @override
  void onInit() {
    fetchuserData();
    super.onInit();
  }

  var isLoading = false.obs;
  var userallData = <UserModel>[].obs;

  void fetchuserData() async {
    try {
      isLoading(true);
      var mydata = await UserApi.getUsers();
      if (mydata != null) {
        userallData.assignAll(mydata);
      }
    } finally {
      isLoading(false);
    }
  }
}
