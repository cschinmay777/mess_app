import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mess_app/bindings/authbindings.dart';
import 'package:mess_app/decisionlog.dart';
import 'package:mess_app/models.dart';
import 'package:mess_app/screens/Authentication/createaccount.dart';
import 'package:mess_app/screens/Authentication/forgotpassword.dart';
import 'package:mess_app/screens/Authentication/loginpage.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';
import 'package:mess_app/screens/Owner/owner_home.dart';
import 'package:mess_app/screens/User/OnTapMess.dart';
import 'package:mess_app/screens/User/UserHomePage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'issignedin.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: "cschinmay777@gmail.com", password: "123456");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mess App",
      initialBinding: AuthBinding(),
      initialRoute: "/mywid",
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(
            name: "/login", page: () => LoginPage(), binding: AuthBinding()),
        GetPage(name: "/forgot", page: () => ForgotPassword()),
        GetPage(
            name: "/create",
            page: () => CreateAccount(),
            binding: AuthBinding()),
        GetPage(name: "/User", page: () => UserScreen()),
        GetPage(name: "/OnTapUser", page: () => OnTapMess()),
        GetPage(name: "/issignin", page: () => IsSignin()),
        GetPage(name: "/owner", page: () => OwnerHomeScreen()),
        GetPage(name: "/mywid", page: () => MyWidget()),
        GetPage(
            name: "/ontap",
            page: () {
              MessModel messmodel = Get.arguments;
              transition:
              Transition.leftToRight;
              return OnTapMess();
            }),
      ],
    );
  }
}
