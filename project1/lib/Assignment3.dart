import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Color.fromARGB(255, 127, 127, 210),
        ),
        body: Text("Demo"),
      ),
    );
  }
}