import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart' as fStorage;
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../constants.dart';

class ImageController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  var cropImagePath = ''.obs;
  var cropImageSize = ''.obs;

  var compressedImagePath = ''.obs;
  var compressedImageSize = ''.obs;

  late String menu_url;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              " MB";
    } else {
      Get.snackbar('Error', 'No Image Selected',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }

    // final cropImageFile = await ImageCropper().cropImage(
    //     sourcePath: selectedImagePath.value,
    //     maxHeight: 512,
    //     maxWidth: 512,
    //     compressFormat: ImageCompressFormat.jpg);
    // cropImagePath.value = cropImageFile!.path;
    // cropImageSize.value =
    //     ((File(cropImagePath.value)).lengthSync() / 1024 / 1024)
    //             .toStringAsFixed(2) +
    //         " MB";
    //
    // final dir = await Directory.systemTemp;
    // final targetPath = dir.absolute.path + "/temp.jpg";
    // var compressedFile = await FlutterImageCompress.compressAndGetFile(
    //     cropImagePath.value, targetPath,
    //     quality: 90);
    // compressedImagePath.value = compressedFile!.path;
    // compressedImageSize.value =
    //     ((File(compressedImagePath.value)).lengthSync() / 1024 / 1024)
    //             .toStringAsFixed(2) +
    //         " MB";
    fStorage.Reference reference = fStorage.FirebaseStorage.instance
        .ref()
        .child("menus")
        .child("${Box.read('name')}_${Box.read('mob_no')} ");
    fStorage.UploadTask uploadTask =
        reference.putFile(File(selectedImagePath.value));
    fStorage.TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    await taskSnapshot.ref.getDownloadURL().then((url) {
      menu_url = url;
      FirebaseFirestore.instance
          .collection("allusers")
          .doc(FirebaseAuth.instance.currentUser?.uid)
          .update({'url': menu_url});
      // print("menu url = ${menu_url}");
    });
  }
}
