import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _greetingText(),
        ],
      ),
    );
  }

  Column _greetingText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "Good afternoon, User", //TODO: write API to get username
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'PlayfairDisplay',
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Welcome back to JOLO.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Icon(Icons.abc, size: 50, color: Colors.white),
      actions: [
        GestureDetector(
          onTap: () => {},
          child: Icon(Icons.notifications_none, size: 30, color: Colors.white),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () => {},
          child: Icon(Icons.settings, size: 30, color: Colors.white),
        ),
        const SizedBox(
          width: 25,
        ),
      ],
    );
  }
}
