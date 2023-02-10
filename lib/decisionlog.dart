import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mess_app/controllers/database_controllers/fetch_controller.dart';
import 'package:mess_app/models/user_model.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';
import 'package:mess_app/screens/MessOwnerPage/MessOwnerPage.dart';
import 'package:mess_app/screens/Owner/owner_home.dart';
import 'package:mess_app/screens/User/UserHomePage.dart';
import 'package:get/get.dart';
import 'package:mess_app/screens/userhomepage/userhomepage.dart';

class MyWidget extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
  var controller = Get.find<FetchController>(); //.fetchData(user_uid)

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.userChanges(),
        builder: (context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.data == null) {
            return WelcomeScreen();
          }

          return FutureBuilder(
              future: controller.fetchData(snapshot.data!.uid),
              builder: (context, AsyncSnapshot<UserDetails> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.data!.category == "Owner") {
                  // Get.off('/owner');
                  // Get.off(() => OwnerHomeScreen());
                  return MessOwnerPage();
                } else if (snapshot.data!.category == "User") {
                  // Get.off('/User');
                  // Get.off(() => UserScreen());
                  return userHomeScreen();
                }

                return Scaffold(
                  body: Center(
                      child: Dialog(
                    child: Text("Bhai kuch gadbad hai"),
                  )),
                );
              });
        });
  }
}
