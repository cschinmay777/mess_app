import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateController extends GetxController {
  Future updateDesc({
    required User? currentUser,
    required String description,
  }) async {
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    print("hey i am in update");
    print("currentUser!.uid  ${currentUser?.uid}");
    firebaseFirestore
        .collection("allusers")
        .doc(currentUser?.uid)
        .update({'description': description});
  }
}
