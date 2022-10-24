import 'package:get/get.dart';
import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';
import 'package:mess_app/controllers/database_controllers/create_controller.dart';
import 'package:mess_app/controllers/database_controllers/fetch_controller.dart';

import '../controllers/database_controllers/update_controller.dart';
import '../controllers/imageController/image_picker_controller.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AuthController>(() => AuthController());
    Get.lazyPut<DataBase_Controller>(() => DataBase_Controller());
    Get.lazyPut<FetchController>(() => FetchController());
    Get.lazyPut<ImageController>(() => ImageController());
    Get.lazyPut<UpdateController>(() => UpdateController());
  }
}
