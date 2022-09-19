import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFEAC4A1),
        automaticallyImplyLeading: false,
        title: Text(
          'Ghar Ka Khana',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Container(
              width: double.infinity,
              child: Stack(
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
                          height: 360,
                          decoration: BoxDecoration(
                            color: Color(0xFFDCE9E9),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.black,
                                offset: Offset(0, 2),
                                spreadRadius: 4,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 30, 0, 30),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.9, -0.15),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                        child: Text(
                                          'Nani\'s Kitchen',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 5, 5),
                                      child: Text(
                                        'Owner Name: Smita Kadam \nAddress: Sunsan Mehel,Shamshan \n               Gali,Near Kabristan-000110\nPer Plate price: 90 for male \n                          70 for female .\nWeekely Off: sunday dinner \nPure vegetarian',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 1,
                                          fontStyle: FontStyle.italic,
                                          height: 1.8,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 30, 10, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.35, 0),
                                            child: IconButton(
                                              // borderColor: Colors.transparent,
                                              // borderRadius: 30,
                                              // borderWidth: 1,
                                              // buttonSize: 40,
                                              icon: Icon(
                                                Icons.location_on_rounded,
                                                color: Colors.grey,
                                                size: 23,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.35, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Address',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 18,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.35, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 10, 0),
                                              child: IconButton(
                                                // borderColor: Colors.transparent,
                                                // borderRadius: 30,
                                                // borderWidth: 1,
                                                // buttonSize: 40,
                                                icon: Icon(
                                                  Icons.call,
                                                  color: Colors.grey,
                                                  size: 23,
                                                ),
                                                onPressed: () {
                                                  print(
                                                      'IconButton pressed ...');
                                                },
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-0.35, 0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 0, 0),
                                              child: Text(
                                                'Call     ',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 18,
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )),
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
            ),
          ),
          Align(
            alignment: AlignmentDirectional(-3.38, 1.16),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Material(
                color: Colors.transparent,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Color(0xFFDCE9E9),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Colors.grey,
                        offset: Offset(0, 2),
                        spreadRadius: 4,
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
                      padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.9, -0.15),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Center(
                                child: Text(
                                  'Today\'s Menu',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Text(
                                'Paneer Butter Masala\nKaddu ki sabji\nchapayi\ndaal\nrice\ngulab jamun\nchatni',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontStyle: FontStyle.italic,
                                  height: 1.8,
                                ),
                              ),
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
          Padding(
              padding: EdgeInsetsDirectional.fromSTEB(60, 0, 60, 10),
              child: ElevatedButton(
                child: Text(
                  'Register',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                // style: ButtonStyle(
                //   backgroundColor: ,
                //   elevation:
                // ),
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
