import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void signIn() async {
    try {
       await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hello AGagin",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              wordSpacing: 3,
            ),
          ),
          //textfeild
          TextField(
            controller: emailcontroller,
            decoration: InputDecoration(hintText: 'Enter Email'),
          ),
          //textfeild
          TextField(
            controller: passwordcontroller,
            decoration: InputDecoration(hintText: 'Enter password'),
          ),
          //loginbutton
          ElevatedButton(
            onPressed:signIn,
            child: Text(
              "Log in",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                wordSpacing: 3,
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("No account?"),
              GestureDetector(onTap: () {}, child: Text("sign up")),
            ],
          ),
        ],
      ),
    );
  }
}

//firebase add to project
// concole setup--auth-emailpassword
