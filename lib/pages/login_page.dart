// ignore_for_file: prefer_const_constructors, implementation_imports

import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: context.canvasColor,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              // ignore: duplicate_ignore
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
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "User name can't be empty.";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Your Password",
                            labelText: "Password"),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Password can't be empty.";
                          } else if (value != null && value.length < 8) {
                            return "Password length must be minimum 8.";
                          }
                          return null;
                        }),
                  ]),
                ),

                SizedBox(height: 40.0),

                Material(
                  // ignore: deprecated_member_use
                  color: context.theme.buttonColor,
                  borderRadius: BorderRadius.circular(changeButton? 50 : 8), 
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      alignment: Alignment.center,
                      height: 40,
                      width: changeButton ? 40 : 150,
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Submit",
                              style: TextStyle(
                                  // fontWeight : FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                      // color: Colors.deepPurple,
                      decoration: BoxDecoration(
                          borderRadius: changeButton
                              ? BorderRadius.circular(50)
                              : BorderRadius.circular(10),
                          color: Colors.deepPurple),
                    ),
                  ),
                )

                // this is button but instead of button we are using container because we want animation.
                // ElevatedButton(
                //     onPressed: () {
                //       // print("Yes buddy I am printed");

                // Navigator.pushNamed(context, MyRoutes.homeRoute);
                //     },
                //     child: Text("Submit"),
                //     style: TextButton.styleFrom(
                //         textStyle: TextStyle(fontSize: 20),
                //         minimumSize: Size(200, 50)))
              ],
            ),
          ),
        ));
  }
}
