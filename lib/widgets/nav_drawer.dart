import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:mess_app/controllers/AuthControllers/authcontroller.dart';
import 'package:mess_app/models/user_model.dart';

import '../constants.dart';
import '../screens/loginscreen/controllers/authcontroller.dart';
// import 'package:flutter_app_learning/profile.dart';
// import 'package:flutter_app_learning/routes.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.indigo,
            ),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 70,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    flex: 6,
                    child: Text(
                      "${Box.read('name')} ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: TextButton(
              child: Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Signout"),
            leading: TextButton(
              child: Icon(Icons.account_circle),
              onPressed: () {
                signout();
              },
            ),
            onTap: () {
              signout();
            },
          ),
          Divider(
            color: Colors.grey,
          ),
          ListTile(
            title: Text("Contact"),
            leading: TextButton(
              child: Icon(Icons.contact_page),
              onPressed: () {},
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  void signout() async {
    Get.find<AuthController>().signout();
  }
}
