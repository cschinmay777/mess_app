import 'package:flutter/material.dart';

class MessCard extends StatelessWidget {
  //MessCard({required String messname, required String description});
  String? messname;
  String? description;
  MessCard({required this.messname, required this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(-3.38, 1.16),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 60, 20, 20),
                //child: InkWell(
                //onTap: () async {
                //   await Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) =>
                //           OntapmesspageWidget(),
                //     ),
                //   );
                // },
                child: Material(
                  color: Colors.transparent,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 150,
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
                        padding: EdgeInsetsDirectional.fromSTEB(10, 30, 0, 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, -0.15),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text("$messname ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black)),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 16, 5, 5),
                              child: Text(
                                "$description ",
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
            )
          ],
        ),
      ),
    );
  }
}
