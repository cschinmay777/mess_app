import 'package:get/get.dart';
import 'package:mess_app/screens/userhomepage/controllers/userhomepagecontroller.dart';

class UserHomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserHomePageController());
  }
}
