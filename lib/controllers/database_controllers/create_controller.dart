import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DataBase_Controller extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future saveUser({
    required User? currentUser,
    required String collection,
    required String name,
    required String phone,
    required String address,
    required String occupation,
    required String gender,
    required String mess_name,
    required String add_mess,
    required String contact,
    required String email,
    required bool veg,
    required String url,
    required String description,
  }) async {
    firebaseFirestore.collection("allusers").doc(currentUser?.uid).set({
      'name': name,
      'phone': phone,
      'address': address,
      'occupation': occupation,
      'gender': gender,
      'category': collection,
      'mess name': mess_name,
      'add_mess': add_mess,
      'contact': contact,
      'veg': veg,
      'email': email,
      'description': description,
      'url': url,
    });
  }
}
