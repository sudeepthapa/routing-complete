import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final String data;
  Login({@required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Column(
        children: [
          Center(
            child: Text(data),
          ),
          SizedBox(height: 20),
          FlatButton(
            child: Text("Go back to home"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
