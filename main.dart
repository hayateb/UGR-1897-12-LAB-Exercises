import 'package:flutter/material.dart';
import 'ScreenOne.dart';
import 'ScreenTwo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator Demo",
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenOne(),
        '/screenTwo': (context) => ScreenTwo(),
      },
    );
  }
}
