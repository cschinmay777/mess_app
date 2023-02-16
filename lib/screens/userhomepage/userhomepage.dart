import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mess_app/screens/loginscreen/controllers/authcontroller.dart';
import 'package:mess_app/screens/userhomepage/controllers/userhomepagecontroller.dart';
import 'package:mess_app/screens/userhomepage/widgets/showCard.dart';
import '../../Colors/colors.dart';

class userHomeScreen extends StatefulWidget {
  const userHomeScreen({Key? key}) : super(key: key);

  @override
  State<userHomeScreen> createState() => _userHomeScreenState();
}

class _userHomeScreenState extends State<userHomeScreen> {
  TextEditingController? textController;
  var controller = Get.put(UserHomePageController());
  var ctr = Get.put(AuthController());

  final List<String> items = [
    'Veg mess',
    'Non-veg mess',
    'Dabba facility',
    'daily mess',
    'montly mess'
  ];

  String? selectedValue;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  dataLoadFunction() async {
    while (isLoading) {
      if (controller.messlist.length > 0) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          // onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: secondaryBG,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(
                          Icons.search,
                          color: tertiary,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                        child: Text(
                          'Select Location',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: primaryText,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ), //serach text
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: primaryText),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          //after pressing languauge button now will land on Mess owner's page
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.language,
                              color: tertiary,
                              size: 20,
                            ),
                            // showLoadingIndicator: true,
                            onPressed: () {
                              print("languagr button pressed");
                            },
                          ),
                        ),
                      ), //language button
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                        child: GestureDetector(
                          onTap: () {
                            ctr.signout();
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHk2Y-D_VIdi3Wrydxn2cyfaBOLsfo7XcEvw&usqp=CAU",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ), //profile pic
                    ],
                  ),
                ),
                //child2
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.96,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      color: Color(0xFFFBFBFF),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: secondaryText,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 3, 10, 3),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.search,
                            color: tertiary,
                            size: 20,
                          ), //secrh icon
                          Expanded(
                            child: TextFormField(
                              controller: textController,
                              // autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Search  mess',
                                // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: primaryText,
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(4.0),
                                    topRight: Radius.circular(4.0),
                                  ),
                                ),
                              ),
                              // style: FlutterFlowTheme.of(context).bodyText1,
                              textAlign: TextAlign.center,
                            ),
                          ), //text field
                          SizedBox(
                            height: 35,
                            child: VerticalDivider(
                              thickness: 2,
                              color: secondaryText,
                            ),
                          ), //divider

                          DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: const [
                                  // SizedBox(
                                  //   width: 4,
                                  // ),
                                  Expanded(
                                    child: Text(
                                      'Filter',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: primaryText,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: primaryText,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              icon: const Icon(
                                Icons.arrow_drop_down,
                              ),
                              iconSize: 14,
                              iconEnabledColor: primaryText,
                              // iconDisabledColor: Colors.grey,
                              buttonHeight: 50,
                              buttonWidth: 100,
                              buttonPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              buttonDecoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(14),
                                // border: Border.all(
                                //   color: Colors.black26,
                                // ),
                                color: Color(0xFFFBFBFF),
                              ),
                              buttonElevation: 0,
                              itemHeight: 40,
                              itemPadding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              dropdownMaxHeight: 200,
                              dropdownWidth: 200,
                              dropdownPadding: null,
                              dropdownDecoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: Color(0xFFFBFBFF),
                              ),
                              dropdownElevation: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //child3
                Align(
                  alignment: AlignmentDirectional(-0.8, -0.1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 10),
                    child: Text(
                      'All messes one tap away...',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF202526),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                //child4
                Expanded(
                  child: Obx(
                    () => ListView.builder(
                      itemCount: controller.messlist.length,
                      itemBuilder: (context, index) => (controller
                                  .messlist[index].category ==
                              "Owner")
                          ? ShowCard(
                              cost: "100",
                              name: "${controller.messlist[index].messname} ",
                              img_url_f:
                                  "https://i.ytimg.com/vi/oMBLR89GbHw/maxresdefault.jpg",
                              img_url_b:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlQmlu4UvGiC_Sl5CFFZepzfOqi326PZJJRQ&usqp=CAU")
                          : Center(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
