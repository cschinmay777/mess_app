import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';
import 'package:mess_app/controllers/database_controllers/update_controller.dart';
import 'package:mess_app/controllers/imageController/image_picker_controller.dart';
import 'package:mess_app/models/user_model.dart';
import 'package:mess_app/widgets/messcard.dart';
import 'package:mess_app/widgets/nav_drawer.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../../controllers/database_controllers/fetch_controller.dart';

class OwnerHomeScreen extends GetView<FetchController> {
  var controller1 = Get.find<ImageController>();
  var controller2 = Get.find<AuthController>();
  var controller3 = Get.find<FetchController>();

  TextEditingController descController = TextEditingController();

  // @override
  // State<OwnerHomeScreen> createState() => _OwnerHomeScreenState();
// }

// class _OwnerHomeScreenState extends State<OwnerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAC4A1),
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(-0.05, 0),
          child: Text(
            'Ghar Ka Khana',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
        leading: IconButton(
          iconSize: 40,
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return NavDrawer();
            }));
          },
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-3.38, 1.16),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: height * 0.28,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF313535),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -0.05),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.9, -0.15),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text("${Box.read('messname')} ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 16, 5, 5),
                                    child: Text(
                                      " ${Box.read('description')} ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.65, 0.06),
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Get.bottomSheet(Container(
                                            color: Colors.orangeAccent,
                                            child: Wrap(
                                              alignment: WrapAlignment.center,
                                              children: <Widget>[
                                                TextField(
                                                  controller: descController,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Get.find<
                                                              UpdateController>()
                                                          .updateDesc(
                                                              currentUser:
                                                                  FirebaseAuth
                                                                      .instance
                                                                      .currentUser,
                                                              description:
                                                                  descController
                                                                      .text);
                                                    },
                                                    child: Text("Add"))
                                              ],
                                            ),
                                          ));
                                        },
                                        child: Text("Add Desc")),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.93, -0.79),
                    child: Container(
                      width: 140,
                      height: 140,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://www.creativehatti.com/wp-content/uploads/2021/04/Nani-ki-Rasoi-Vector-Mascot-Logo-Template-28-small.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-3.38, 1.16),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: height * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF313535),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -0.05),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 10, 0, 30),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-0.9, -0.15),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 5),
                                      child: Text("${Box.read('messname')} ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 16, 5, 5),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 2),
                                          child: Text(
                                            "Owner Name : ${Box.read('name')} ",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 5, 0, 2),
                                          child: Text(
                                            "Contact Details : ${Box.read('mob_no')} \n\t\t\t\t\t\t ${Box.read('contact')}",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 5, 0, 2),
                                          child: Text(
                                            "Address : ${Box.read('addr')}",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-3.38, 1.16),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 20),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: height * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Color(0xFF313535),
                              width: 2,
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, -0.05),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.9, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                        child: Text("Menu",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black)),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 16, 5, 5),
                                          child: (Box.read('photourl') != null)
                                              ? Image.network(
                                                  Box.read('photourl'),
                                                  frameBuilder: (context,
                                                      child,
                                                      frame,
                                                      wasSynchronouslyLoaded) {
                                                    return child;
                                                  },
                                                  loadingBuilder: (context,
                                                      child, loadingProgress) {
                                                    if (loadingProgress ==
                                                        null) {
                                                      return child;
                                                    } else {
                                                      return Center(
                                                          child:
                                                              const CircularProgressIndicator());
                                                    }
                                                  },
                                                )
                                              : Text(
                                                  "Add image of menu",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontStyle: FontStyle.italic,
                                                  ),
                                                ),
                                        ),
                                        Container(
                                          child: Obx(() => controller1
                                                      .selectedImagePath
                                                      .value ==
                                                  ""
                                              ? Text(
                                                  "Select Image from Gallary/camera")
                                              : Image.file(File(controller1
                                                  .selectedImagePath.value))),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              controller1
                                                  .getImage(ImageSource.camera);
                                            },
                                            child: Text("Camera")),
                                        ElevatedButton(
                                            onPressed: () {
                                              controller1.getImage(
                                                  ImageSource.gallery);
                                            },
                                            child: Text("Gallery")),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
