import 'package:get/get.dart';
import 'package:mess_app/screens/editProfile/controller/EditProfileController.dart';

class EditProfileBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}
