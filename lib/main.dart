import 'dart:developer';

import 'package:counter_app/counter_app.dart';
import 'package:counter_app/second_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SecondPage(),
      home: CounterApp(),
    );
  }
}


