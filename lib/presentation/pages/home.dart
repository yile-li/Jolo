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
          SizedBox(height: 30),
          Container(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Text(
                  "November 28, 2023", //TODO: add API to get current date
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 270,
                  child: Text(
                    "What do I need to change about myself?", //TODO: add API to get question
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontFamily: "PlayfairDisplay",
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
            height: 313,
            width: 390,
            decoration: BoxDecoration(
              // color: Colors.blueAccent,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
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
