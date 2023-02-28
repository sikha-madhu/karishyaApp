import 'package:flutter/material.dart';
import 'package:pujaapp/screens/signInoage.dart';
import 'existingcustomers.dart';

// ignore: camel_case_types
class schedule extends StatefulWidget {
  const schedule({super.key});

  @override
  State<schedule> createState() => scheduleState();
}

// ignore: camel_case_types
class scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Schedule a Puja"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            tooltip: 'notifications Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search Icon',
            onPressed: () {},
          ), //IconButton
        ], //<Widget>[]
        backgroundColor: const Color.fromARGB(255, 105, 22, 98),
        elevation: 50.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          tooltip: 'arrow_back_ios Icon',
          onPressed: () {
            Navigator.push(
                      context, 
                    MaterialPageRoute(
                      builder:(context)=> const SignInPage()));
          },
        ),
        
      ),
    
      body: Container(
 decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 246, 239, 186),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/back2.png"),
            alignment: Alignment.bottomCenter,
          ),
        ),
        
          child:Center(
child: Column(
  children: [
    const SizedBox(height: 10),
    Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Color.fromARGB(255, 112, 38, 102),
          width: 1,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.black.withAlpha(30),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder:(context)=> const existingcustomer())
          );
        },
        child: SizedBox(
          width: 320,
          height: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Image.asset('assets/images/customer.png'),
              const Text(
                "For New Customer",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 90, 3, 90),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ),
      ),
    ),
    const SizedBox(height: 20),

    Card(
      // margin: EdgeInsets.fromLTRB(10, top, right, bottom),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
          color: Color.fromARGB(255, 112, 38, 102),
          width: 1,
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: Colors.black.withAlpha(30),
        onTap: () {
          Navigator.push(
            context, 
            MaterialPageRoute(builder:(context)=> const existingcustomer())
          );
        },
        child: SizedBox(
          width: 320,
          height: 110,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Image.asset('assets/images/customer.png'),
              const Text(
                "Existing Customer",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 90, 3, 90),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ),
      ),
    ),
  ],
),

          )
      ),
    bottomNavigationBar: BottomNavigationBar(
      showSelectedLabels:true ,
      showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined,color: Color.fromARGB(255, 120, 119, 119),),label: "Booking"),
            BottomNavigationBarItem(icon: Icon(Icons.confirmation_num_outlined,color: Color.fromARGB(255, 120, 119, 119),),label: "Earning"),
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Color.fromARGB(255, 120, 119, 119),),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.groups_outlined,color: Color.fromARGB(255, 120, 119, 119),),label: "Customers"),
            BottomNavigationBarItem(icon: Icon(Icons.fireplace_outlined,color: Color.fromARGB(255, 120, 119, 119),),label: "Create puja")
          ],
          selectedItemColor: const Color.fromARGB(255, 120, 119, 119),
          unselectedItemColor: const Color.fromARGB(255, 120, 119, 119),
        )

    );
  }
  }
