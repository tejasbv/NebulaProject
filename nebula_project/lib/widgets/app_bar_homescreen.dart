// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


import './menu_item.dart';

class CustomAppBar_HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "e4cd0639b5a5c1e164aeff4370ed2365.gif",
            fit: BoxFit.fill,
            height: 75,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 20),
          Text(
            "Course Planner",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItemC(
            title: "Home",
            press: () {},
          ),
          MenuItemC(
            title: "about",
            press: () {},
          ),
          MenuItemC(
            title: "contact",
            press: () {},
          ),
          MenuItemC(
            title: "Login",
            press: () {},
          ),
          MenuItemC(
            title: "Register",
            press: () {},
          ),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
