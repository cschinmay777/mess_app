import 'package:get/get.dart';
import 'package:mess_app/screens/loginscreen/controllers/authcontroller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => AuthController());
  }
}
