import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                // image: DecorationImage(
                //   fit: BoxFit.cover,
                //   image: Image.network(
                //     '',
                //   ).image,
                // ),
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
                children: [
                  Expanded(
                      child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Lottie.network(
                        'https://assets9.lottiefiles.com/temporary_files/iW0br8.json',
                        width: height / 2,
                        height: height / 2,
                        fit: BoxFit.fill,
                        animate: true,
                      ),
                      SizedBox(
                        height: height / 14,
                      ),
                      Text(
                        'Find a Mess',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Align(
                        alignment: Alignment(-0.59, 0),
                        child: Text(
                          'App khayenge ',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.35, 0),
                        child: Text(
                          'Hum Khilayenge',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: height / 14,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.deepOrangeAccent,
                        radius: 35,
                        child: IconButton(
                          color: Colors.deepOrangeAccent,
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          onPressed: () {
                            Get.toNamed(
                              "/login",
                            );
                          },
                        ),
                      ),
                    ],
                  ) //.animated([animationsMap['stackOnPageLoadAnimation']!]),
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
