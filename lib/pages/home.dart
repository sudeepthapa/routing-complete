import 'package:flutter/material.dart';
import 'package:routing/pages/routes.dart';

class Home extends StatelessWidget {
  String data = 'Data From Home.';
  final String title;
  Home({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: [
          Center(
            child: TextField(
              decoration: InputDecoration(
                  hintText: title,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            child: Text("Go to Login"),
            onTap: () {
              Navigator.pushNamed(context, Routes.login, arguments: data);
            },
          )
        ],
      ),
    );
  }
}
