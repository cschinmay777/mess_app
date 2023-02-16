import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../models.dart';

class UserHomePageController extends GetxController {
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  late CollectionReference collectionReference;
  RxList<MessModel> messlist = RxList<MessModel>([]);

  @override
  void onInit() {
    super.onInit();
    collectionReference = firebaseFirestore.collection("allusers");
    messlist.bindStream(getMessList());
    update();
  }

  Stream<List<MessModel>> getMessList() {
    print("Yes working");
    // final data = FirebaseFirestore.instance.collection("cities").get();
    // return (MessModel.fromMap(data));
    return collectionReference
        .snapshots()
        .map((event) => event.docs.map((e) => MessModel.fromMap(e)).toList());
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
