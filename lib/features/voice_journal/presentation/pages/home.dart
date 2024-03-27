import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_sound/flutter_sound.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FlutterSoundRecorder recorder = FlutterSoundRecorder();

  @override
  void initState() {
    super.initState();

    _initRecorder();
  }

  @override
  void dispose() {
    recorder.closeRecorder();

    super.dispose();
  }

  Future _initRecorder() async {}

  Future record() async {
    await recorder.startRecorder(
        toFile: 'file'); // TODO: change file path + research toStream
  }

  Future stop_recording() async {
    await recorder.stopRecorder();
  }

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
          _questionCard(),
          SizedBox(height: 100),
          ElevatedButton(
              onPressed: () async => {
                    recorder.isRecording
                        ? await stop_recording()
                        : await record(),
                  },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                fixedSize: Size(80, 80),
              ),
              child: Icon(
                recorder.isRecording ? Icons.stop : Icons.mic,
                color: Colors.black,
                size: 45,
              ))
        ],
      ),
    );
  }

  Container _questionCard() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
