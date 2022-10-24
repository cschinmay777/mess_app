import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mess_app/controllers/database_controllers/create_controller.dart';
import 'package:mess_app/widgets/error_box.dart';

import '../../models/user_model.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value?.email;
  User? loggedinuser;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser({
    required String email,
    required String password,
    required String collection,
    required String name,
    required String phone,
    required String address,
    required String occupation,
    required String gender,
    required String mess_name,
    required String add_mess,
    required String contact,
    required bool veg,
  }) async {
    await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    // .then((value) => Get.toNamed("/login"))
    // .catchError((onError) => Get.snackbar("Error", onError));
    print("step 1");
    await Get.find<DataBase_Controller>().saveUser(
      currentUser: _auth.currentUser,
      collection: collection,
      name: name,
      phone: phone,
      address: address,
      occupation: occupation,
      gender: gender,
      mess_name: (collection == "Owner") ? mess_name : "",
      add_mess: (collection == "Owner") ? add_mess : "",
      contact: (collection == "Owner") ? contact : "",
      email: email,
      veg: (collection == "Owner") ? veg : true,
      url: "",
      description: "",
    );
    print("Step2");
    Get.toNamed("/login");
  }

  void login({required String email, required String password}) async {
    final user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    loggedinuser = _auth.currentUser;
    //.then((value) => Get.toNamed("/User"));
    if (user != null) {
      Get.toNamed("/User");
      Error_Box(
        message: "Loged in",
      );
    } else {
      Error_Box(message: "Error");
    }

    //.catchError((onError) => Error_Box(message: onError.toString()));
    //Get.snackbar("Error", onError));
  }

  void signout() {
    _auth.signOut().then((value) => Get.toNamed("/login"));
  }
}
