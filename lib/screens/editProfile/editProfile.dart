import 'package:flutter/material.dart';

import '../../Colors/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryBG,
        appBar: AppBar(
          backgroundColor: primaryBG,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.05, 0),
                child: IconButton(
                  iconSize: 60,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: secondaryText,
                    size: 30,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Text(
                'Complete your profile',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: secondaryText,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ));
  }
}
