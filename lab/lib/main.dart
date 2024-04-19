// lib/main.dart
import 'package:flutter/material.dart';


void main() {
  runApp(LAB1());
}

// stateless_widget_1.dart
class StatelessWidget1 extends StatelessWidget {
  final String title;

  const StatelessWidget1({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.amber, // Changing background color to amber
      ),
      body: Center(
        child: Text(
          "Exploring Scaffold Widget",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 48,
          ),
        ),
      ),
    );
  }
}

class LAB1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatelessWidget1(title: "Scaffold Widget"),
    );
  }
}
