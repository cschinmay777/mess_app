import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mess_app/models.dart';
import 'package:mess_app/constants.dart';

import '../../models/user_model.dart';

class FetchController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  RxList<MessModel> messlist = RxList<MessModel>([]);

  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection("allusers");
    messlist.bindStream(getMessList());
  }

  Stream<List<MessModel>> getMessList() {
    print("Yes working");
    // final data = FirebaseFirestore.instance.collection("cities").get();
    // return (MessModel.fromMap(data));
    return collectionReference
        .snapshots()
        .map((event) => event.docs.map((e) => MessModel.fromMap(e)).toList());
  }

  //getting individual data
  Future<UserDetails> fetchData(String user_uid) async {
    final data =
        await FirebaseFirestore.instance.doc("allusers/$user_uid").get();
    UserDetails().storedatatoBox(data.data()!);
    // print(Box.read('email'));
    // print(Box.read('description'));

    return UserDetails.fromMap(data.data()!);
  }

  void printdata() {
    print(UserDetails().name);
  }
}
