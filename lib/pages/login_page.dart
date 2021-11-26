import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        SizedBox(
          height: 50.0,
        ),

        Image.asset("assets/images/arvind_kejriwal.jpg", fit: BoxFit.cover),

        SizedBox(
          height: 20.0,
        ),

        // ignore: prefer_const_constructors
        Text(
          "Welcome ",
          style: TextStyle(fontSize: 30.0, color: Colors.grey),
        ),

        SizedBox(
          height: 20.0,
        ),

        TextFormField(
          decoration:
              InputDecoration(hintText: "Enter Your name", labelText: "Name"),
        ),

        SizedBox(
          height: 20.0,
        ),

        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              hintText: "Enter Your Password", labelText: "Password"),
        ),

        SizedBox(
          height: 20.0,
        ),

        ElevatedButton(
            onPressed: () {
              print("Yes buddy I am printed");
            },
            child: Text("Submit"))
      ],
    ));
  }
}
