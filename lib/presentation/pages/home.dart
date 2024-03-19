import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.blue,
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
