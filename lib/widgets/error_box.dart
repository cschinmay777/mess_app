import 'package:flutter/material.dart';

class Error_Box extends StatelessWidget {
  final String? message;
  Error_Box({this.message});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Text(message!),
      actions: [
        ElevatedButton(
          child: Center(
            child: Text("OK"),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
