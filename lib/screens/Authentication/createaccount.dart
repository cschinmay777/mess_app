import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/AuthControllers/authcontroller.dart';

const List<String> list = <String>['Male', 'Female', 'Other'];
const List<String> category_list = <String>['User', 'Owner'];

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount>
    with TickerProviderStateMixin {
  TextEditingController? namecontroller;

  TextEditingController? phoneController;

  TextEditingController? addressController;

  TextEditingController? occupationcontroller;

  TextEditingController? messnameController;

  TextEditingController? addmessController;

  TextEditingController? contactController;

  bool? switchListTileValue;

  TextEditingController? emailcontroller;

  TextEditingController? passwordcontroller;
  String dropdownValue = list.first;
  String category = category_list.first;

  @override
  void initState() {
    super.initState();

    namecontroller = TextEditingController();
    phoneController = TextEditingController();
    addressController = TextEditingController();
    occupationcontroller = TextEditingController();
    messnameController = TextEditingController();
    addmessController = TextEditingController();
    contactController = TextEditingController();
    emailcontroller = TextEditingController();
    passwordcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEAC4A1),
                    Color(0xFFFFE5B5),
                    Color(0xFFEAC4A1)
                  ],
                  stops: [0, 0.5, 1],
                  begin: AlignmentDirectional(-1, -1),
                  end: AlignmentDirectional(1, 1),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 60, 20, 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            width: width / 1.2,
                            height: height / 13,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6,
                                  color: Color(0xFFD1A06B),
                                  offset: Offset(0, 2),
                                  spreadRadius: 7,
                                )
                              ],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 10),
                              child: Center(
                                child: Text(
                                  'Create Account',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    fontSize: 28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              child: Container(
                                width: width / 1.2,
                                height: height / 1.3,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 6,
                                      color: Color(0xFFD1A06B),
                                      offset: Offset(0, 2),
                                      spreadRadius: 7,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 15, 20, 10),
                                        child: Text(
                                          'Enter your details',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: namecontroller,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Name',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: phoneController,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Mob No.',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: addressController,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Current Address',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: occupationcontroller,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Occupation',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 10, 20, 5),
                                              child: Container(
                                                width: width / 4,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ), //Border.all
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: DropdownButton<String>(
                                                  dropdownColor: Colors.white,
                                                  value: dropdownValue,
                                                  icon: const Icon(
                                                    Icons.arrow_downward,
                                                    color: Colors.grey,
                                                  ),
                                                  elevation: 16,
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                  underline: Container(
                                                    height: 2,
                                                    // color: Colors.white,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD7DDEE),
                                                        width: 2,
                                                      ), //Border.all
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                  ),
                                                  onChanged: (String? value) {
                                                    // This is called when the user selects an item.
                                                    setState(() {
                                                      dropdownValue = value!;
                                                    });
                                                  },
                                                  items: list.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 0, 0),
                                                        child: Text("$value"),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 5),
                                              child: Container(
                                                width: width / 3.5,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ), //Border.all
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: DropdownButton<String>(
                                                  value: category,
                                                  icon: const Icon(
                                                    Icons.arrow_downward,
                                                    color: Colors.grey,
                                                  ),
                                                  elevation: 16,
                                                  style: const TextStyle(
                                                      color: Colors.grey),
                                                  underline: Container(
                                                    height: 2,
                                                    color: Colors.white,
                                                  ),
                                                  onChanged: (String? value) {
                                                    // This is called when the user selects an item.
                                                    setState(() {
                                                      category = value!;
                                                    });
                                                  },
                                                  items: category_list.map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                15, 0, 10, 0),
                                                        child: Text(value),
                                                      ),
                                                    );
                                                  }).toList(),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Visibility(
                                        visible: !(category == "User"),
                                        child: Column(children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 20, 5),
                                            child: TextFormField(
                                              controller: messnameController,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Mess name',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 20, 5),
                                            child: TextFormField(
                                              controller: addmessController,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Address of mess',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 20, 5),
                                            child: TextFormField(
                                              controller: contactController,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Contact No.',
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFD7DDEE),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                              ),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 10, 20, 0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: SwitchListTile(
                                                value: switchListTileValue ??=
                                                    false,
                                                onChanged: (newValue) =>
                                                    setState(() =>
                                                        switchListTileValue =
                                                            newValue),
                                                title: Text(
                                                  'Pure veg',
                                                ),
                                                tileColor: Color(0xFFFFCAA3),
                                                activeColor: Color(0xE6EE8B60),
                                                dense: true,
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: emailcontroller,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Email',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 10, 20, 5),
                                        child: TextFormField(
                                          controller: passwordcontroller,
                                          autofocus: false,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Password',
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFFD7DDEE),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 16, 20, 0),
                                        child: TextButton(
                                          onPressed: registerUser,
                                          child: Text("Register",
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              )),
                                          style: TextButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              elevation: 2,
                                              primary: Colors.black,
                                              backgroundColor:
                                                  Color(0xffF09670)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void registerUser() async {
    Get.find<AuthController>().createUser(
      collection: category,
      name: namecontroller!.text,
      email: emailcontroller!.text,
      password: passwordcontroller!.text,
      phone: phoneController!.text,
      address: addressController!.text,
      occupation: occupationcontroller!.text,
      gender: dropdownValue,
      mess_name: messnameController!.text,
      add_mess: addmessController!.text,
      contact: contactController!.text,
      veg: (switchListTileValue!),
    );
  }
}
