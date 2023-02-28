import 'package:flutter/material.dart';
import 'package:pujaapp/screens/schedule.dart';

// ignore: camel_case_types
class existingcustomer extends StatefulWidget {
  const existingcustomer({super.key});

  @override
  State<existingcustomer> createState() => _existingcustomerState();
}

// ignore: camel_case_types
class _existingcustomerState extends State<existingcustomer> {
  // ignore: prefer_typing_uninitialized_variables
  var value1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Existing Customers"),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const schedule()));
            },
          ),
        ),
        body: Container(
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
            child: ListView.builder(
              padding: const EdgeInsets.only(bottom: 20),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey.withOpacity(0.5),
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            const Padding(
                                padding: EdgeInsets.fromLTRB(8, 10, 8, 20)),
                            Image.asset(
                              'assets/images/profile.png',
                              width: 50,
                              height: 50,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Ramesh Verma",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 90, 3, 90),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: const <Widget>[
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.grey,
                                      size: 16,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "Gachibowli",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 130),
                            Theme(
                                data: ThemeData(
                                  unselectedWidgetColor: Colors.grey,
                                  checkboxTheme: CheckboxThemeData(
                                    shape: const CircleBorder(),
                                    fillColor: MaterialStateProperty.all<Color>(
                                      const Color.fromARGB(255, 90, 3, 90),
                                    ),
                                  ),
                                ),
                                child: Checkbox(
                                  value: value1 ?? false,
                                  onChanged: (bool? value) => {
                                    setState(() {
                                      value1 = value;
                                    })
                                  },
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            )),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: Color.fromARGB(255, 120, 119, 119),
                ),
                label: "Booking"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.confirmation_num_outlined,
                  color: Color.fromARGB(255, 120, 119, 119),
                ),
                label: "Earning"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Color.fromARGB(255, 120, 119, 119),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups_outlined,
                  color: Color.fromARGB(255, 120, 119, 119),
                ),
                label: "Customers"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fireplace_outlined,
                  color: Color.fromARGB(255, 120, 119, 119),
                ),
                label: "Create puja")
          ],
          selectedItemColor: const Color.fromARGB(255, 120, 119, 119),
          unselectedItemColor: const Color.fromARGB(255, 120, 119, 119),
        ));
  }
}
