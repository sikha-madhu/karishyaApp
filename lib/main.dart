import 'package:flutter/material.dart';
import 'package:pujaapp/screens/signInoage.dart';
// ignore: unused_import
import 'package:pujaapp/screens/schedule.dart';
import 'package:pujaapp/screens/splashscreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'karishye',
      theme: ThemeData(
        fontFamily: 'poppins',

        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const splashscren(),
    );
  }
}

