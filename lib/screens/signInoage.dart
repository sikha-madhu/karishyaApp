import 'package:flutter/material.dart';
import 'package:pujaapp/screens/schedule.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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
          child: Center(
              child: Column(
                children: <Widget> [
                  const SizedBox(
                    height: 220,
                  ),
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 32,
                      height: 2.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text("Sign in to access all the important puja material and puja sessions.",
                    style: TextStyle(
                      fontFamily: 'poppins',
                      fontSize: 18,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 106, 104, 104),
                      
        
                      
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Padding(padding: EdgeInsets.all(30),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Mobile No', 
                    )
                  ),
                  ),
                   Padding( padding: const EdgeInsets.only(
                    left : 20,
                    top : 10,
                    right : 20,
                    bottom : 10,
                  ),
                  child: ElevatedButton(
                    style:   const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 103, 36, 104)),
                      minimumSize: MaterialStatePropertyAll<Size>(Size.fromHeight(50)),
                      
                    ),
                    child: const Text(
                      'SUBMIT',
                    ),
                    onPressed: () {
                      Navigator.push(
                        context, 
                      MaterialPageRoute(
                        builder:(context)=> const schedule()));
                    },
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                    left : 20,
                    top : 10,
                    right : 20,
                    bottom : 10,
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                      Text("Don't have an account? ",
                      style:TextStyle(
                        fontSize: 15,
                      )),
                      Text("SIGN UP",
                      style:TextStyle(
                        color: Color.fromARGB(255, 252, 112, 6),
                        fontSize: 15,
                      ))
                     ], 
                    ),
                  )
                ],
          )
              ),
        ),
      ),
    );
  }
}
