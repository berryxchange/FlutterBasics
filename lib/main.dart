import 'package:flutter/material.dart';
import 'package:flutter_basics/View/StagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Stage(name: "Flutter Basics"),
    );
  }
}
