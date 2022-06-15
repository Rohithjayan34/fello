import 'package:countdown_fello/timeCountDownPage.dart';
import 'package:flutter/material.dart';
import  'package:circular_countdown/circular_countdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const TimeCountdownPage(),
    );
  }
}

