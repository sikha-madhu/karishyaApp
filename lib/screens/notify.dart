import 'package:flutter/material.dart';
import 'package:notifications/notifications.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:pujaapp/screens/notification.dart';
class NotificationsCarousels extends StatefulWidget {
  const NotificationsCarousels({super.key});

  @override
  State<NotificationsCarousels> createState() => _NotificationsCarouselsState();
}

class _NotificationsCarouselsState extends State<NotificationsCarousels> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/Group 6020menu.png",width: 30,height: 30,),
        title: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
        backgroundColor: const Color.fromARGB(255, 105, 22, 98),
        actions: [
          Icon(Icons.notifications_none_outlined,size: 30,),
          SizedBox(width: 20,),
          Icon(Icons.search,size: 30,),
        ],
      ),
      body: SafeArea(
      child: Stack(
        fit:StackFit.loose,
          children: [
            Container(
              
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
              
            ),
            CarouselSlider(
              items: [
                NotificationScreen(),
                NotificationScreen(),
                NotificationScreen(),
              ], 
              options: CarouselOptions(
                autoPlay: false,
              viewportFraction: 1.0,
              // enlargeCenterPage: false,
                scrollDirection: axisDirectionToAxis(AxisDirection.right)
              ),
            ),
            
           
          ],
        ),
      )
      );
    
  }
}