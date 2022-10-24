import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';
import 'package:mess_app/models/user_model.dart';
import 'package:mess_app/screens/Authentication/edit_profile.dart';
import 'package:mess_app/screens/Authentication/loginpage.dart';
import 'package:mess_app/screens/Authentication/welcomescreen.dart';
import 'package:mess_app/screens/Owner/owner_home.dart';
import 'package:mess_app/screens/User/UserHomePage.dart';

class IsSignin extends GetWidget<AuthController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Get.find<AuthController>().user != null
          ? Decision()
          : WelcomeScreen();
    });
  }
}

class Decision extends StatefulWidget {
  @override
  State<Decision> createState() => _DecisionState();
}

class _DecisionState extends State<Decision> {
  late String documentId;

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    String uid = auth.currentUser!.uid.toString();
    documentId = uid;
    CollectionReference users =
        FirebaseFirestore.instance.collection('allusers');

    return FutureBuilder<DocumentSnapshot>(
        future: users.doc(documentId).get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return Dialog();
            // return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData && !snapshot.data!.exists) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            final userdata= UserDetails.fromMap(data);
            print("   userdata.category:  ${userdata.category}");

            return (data['category'].toString() == "Owner")
                ? OwnerHomeScreen()
                : UserScreen();
          }
          return WelcomeScreen();
        });
  }
}
