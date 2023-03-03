import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pujaapp/screens/notification.dart';
import 'package:pujaapp/screens/notify.dart';
import 'package:pujaapp/screens/signInoage.dart';
// ignore: camel_case_types
class splashscren extends StatefulWidget {
  const splashscren({super.key});

  @override
  State<splashscren> createState() => _splashscrenState();
}

// ignore: camel_case_types
class _splashscrenState extends State<splashscren> {

  @override
   void initState(){
    super.initState();
    Timer(const Duration(seconds: 3), () =>  Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder:(context)=> const NotificationsCarousels())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Color.fromARGB(255, 243, 234, 169),
              ],
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/back2.png"),
              alignment: Alignment.bottomCenter,
            ),
          ),
          child:Center(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Karishye",
                style:TextStyle(
                  fontSize: 66,
                  color: Color.fromARGB(255, 98, 25, 82),
                  fontWeight:FontWeight.w900,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Overpass',
                ))
              ],
            )
          )
    )
      )
    );
  }
}