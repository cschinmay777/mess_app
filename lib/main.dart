import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mess_app/bindings/authbindings.dart';
import 'package:mess_app/screens/Authentication/createaccount.dart';
import 'package:mess_app/screens/Authentication/forgotpassword.dart';
import 'package:mess_app/screens/Authentication/loginpage.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';
import 'package:mess_app/screens/User/OnTapMess.dart';
import 'package:mess_app/screens/User/UserHomePage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Mess App",
      initialBinding: AuthBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(
            name: "/login", page: () => LoginPage(), binding: AuthBinding()),
        GetPage(name: "/forgot", page: () => ForgotPassword()),
        GetPage(
            name: "/create",
            page: () => CreateAccount(),
            binding: AuthBinding()),
        GetPage(name: "/User", page: () => User()),
        GetPage(name: "/OnTapUser", page: () => Registration()),
      ],
    );
  }
}
