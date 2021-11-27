import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 60.0,
              ),

              Image.asset(
                "assets/images/login.jpg",
                fit: BoxFit.cover,
                height: 180,
              ),

              SizedBox(
                height: 20.0,
              ),

              // ignore: prefer_const_constructors
              Text(
                "Welcome $name ",
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              ),

              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 25),
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your name", labelText: "Name"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                  ),
                ]),
              ),

              SizedBox(height: 40.0),

              InkWell(

                onTap: () async {

                  setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);

                },

                child: AnimatedContainer(

                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  height: 40,
                  width: changeButton ? 40 : 150,
                  child: 
                  changeButton ? Icon(Icons.done, color: Colors.white,) : Text(
                    "Submit",
                    style: TextStyle(
                        // fontWeight : FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  // color: Colors.deepPurple,
                  decoration: BoxDecoration(
                      borderRadius:  changeButton ? BorderRadius.circular(50) : BorderRadius.circular(10),
                      color: Colors.deepPurple),

                      
                ),
              )
              // ElevatedButton(
              //     onPressed: () {
              //       // print("Yes buddy I am printed");

              //       Navigator.pushNamed(context, MyRoutes.homeRoute);
              //     },
              //     child: Text("Submit"),
              //     style: TextButton.styleFrom(
              //         textStyle: TextStyle(fontSize: 20),
              //         minimumSize: Size(200, 50)))
            ],
          ),
        ));
  }
}
