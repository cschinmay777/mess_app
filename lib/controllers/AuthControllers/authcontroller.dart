import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rxn<User> _firebaseUser = Rxn<User>();
  String? get user => _firebaseUser.value?.email;

  @override
  void onInit() {
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(
      {required String fname,
      required String email,
      required String password}) async {
    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) => Get.toNamed("/login"))
        .catchError((onError) => Get.snackbar("Error", onError));
  }

  void login({required String email, required String password}) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Get.toNamed("/editprofile"))
        .catchError((onError) => Get.snackbar("Error", onError));
  }

  void signout() {
    _auth.signOut().then((value) => Get.toNamed("/login"));
  }
}
