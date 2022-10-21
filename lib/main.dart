import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kepuharjoapp/Screen/Dashboard.dart';
import 'package:kepuharjoapp/Screen/Login.dart';

import 'package:kepuharjoapp/pages/pages.dart';
import 'package:kepuharjoapp/shared/shared.dart';
//@dart=2.9

import 'package:splashscreen/splashscreen.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(
  //     const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      theme: ThemeData(
          primaryColor: greenColor,
          primarySwatch: Colors.green,
          canvasColor: Color.fromARGB(0, 255, 255, 255)),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
