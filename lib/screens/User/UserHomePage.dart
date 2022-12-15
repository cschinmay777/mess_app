import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mess_app/controllers/database_controllers/fetch_controller.dart';
import 'package:mess_app/widgets/nav_drawer.dart';
import '../../controllers/AuthControllers/authcontroller.dart';
import 'package:sidebarx/sidebarx.dart';

import '../../widgets/messcard.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  String dropDownValue = 'Pure Veg';
  var items = ['Pure Veg', 'Dabba Delivery Available'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var controller = Get.find<FetchController>();
    print(controller.messlist);
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4E1D0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      TextField(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 40, 10, 20),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.black,
                                  child: DropdownButton(
                                    underline: Container(),
                                    focusColor: Colors.red,
                                    // iconDisabledColor: Colors.red,
                                    iconEnabledColor: Colors.red,
                                    // value: dropDownValue,
                                    icon: const Icon(
                                      Icons.arrow_circle_down_sharp,
                                      color: Colors.red,
                                    ),
                                    iconSize: 10,
                                    elevation: 16,
                                    style: const TextStyle(
                                        color: Colors.deepPurple),
                                    items: items.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      // This is called when the user selects an item.
                                      setState(() {
                                        dropDownValue = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Obx(
                              () => ListView.builder(
                                  itemCount: controller.messlist.length,
                                  itemBuilder: (context, index) => (controller
                                              .messlist[index].category ==
                                          "Owner")
                                      ? GestureDetector(
                                          onTap: () {
                                            Get.toNamed('ontap',
                                                arguments:
                                                    controller.messlist[index]);
                                          },
                                          child: MessCard(
                                              messname: controller
                                                  .messlist[index].messname!,
                                              description: controller
                                                  .messlist[index]
                                                  .description!),
                                        )
                                      : Center()),
                            )),
                      )
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
  }
}
