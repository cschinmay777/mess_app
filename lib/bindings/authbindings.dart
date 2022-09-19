import 'package:get/get.dart';
import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
