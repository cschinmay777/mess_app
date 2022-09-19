import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';
import 'package:mess_app/screens/Authentication/edit_profile.dart';
import 'package:mess_app/screens/Authentication/loginpage.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';

class IsSignin extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Get.find<AuthController>().user != null
          ? EditProfile()
          : WelcomeScreen();
    });
  }
}
