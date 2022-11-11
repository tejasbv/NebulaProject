import 'package:flutter/material.dart';
import 'package:nebula_project/screens/Login.dart';
import 'package:nebula_project/screens/Register.dart';
import 'package:nebula_project/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}