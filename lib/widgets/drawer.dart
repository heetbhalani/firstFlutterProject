// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  final String imgUrl =
      "https://media-exp1.licdn.com/dms/image/C4E03AQEzRIMFcylYpQ/profile-displayphoto-shrink_800_800/0/1638075863694?e=1643846400&v=beta&t=K6wrqaEgvlq7e_s2fRryXjoxsd8UAke21_vAHG3hDf4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: ListView(children: [
        SizedBox(
          height: 10,
        ),
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,

            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
            ),

            // Image.network(imgUrl),
            accountName: Text("Heet Bhalani", style: TextStyle(fontSize: 18)),
            accountEmail: Text("heetbhalani9033@gmail.com",
                style: TextStyle(fontSize: 18)),
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.home, color: Colors.white),
          title: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
          title: Text(
            "View Profile",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          leading: Icon(CupertinoIcons.mail, color: Colors.white),
          title: Text(
            "Contact us",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]),
    );
  }
}
