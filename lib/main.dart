// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gps_system_project/firstscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Bus Tracker';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        // appBar: AppBar(title: const Text(_title)),
        body: firstscreen(),
      ),
    );
  }
}
