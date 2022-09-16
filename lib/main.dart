import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mess_app/screens/Authentication/createaccount.dart';
import 'package:mess_app/screens/Authentication/forgotpassword.dart';
import 'package:mess_app/screens/Authentication/loginpage.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Mess App",
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(name: "/login", page: () => LoginPage()),
        GetPage(name: "/forgot", page: () => ForgotPassword()),
        GetPage(name: "/create", page: () => CreateAccount()),
      ],
    );
  }
}
