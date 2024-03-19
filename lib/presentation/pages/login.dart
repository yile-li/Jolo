// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 120),
      height: 100,
      alignment: Alignment.center,
      child: Text("Journal Out Loud",
          style: TextStyle(
              color: Colors.black, fontSize: 35, fontWeight: FontWeight.w600)),
    ));

    // username textfield
    // password textfield
    // forgot password
    // login button
    // don't have an account? sign up
    // or
    // login with google
    // login with apple
  }
}
