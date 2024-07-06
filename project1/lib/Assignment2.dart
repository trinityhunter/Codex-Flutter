import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo"),
          backgroundColor: Color.fromARGB(255, 108, 108, 235),
        ),
        body: Center(
          child: Text("Demo"),
        )
      ),
    );
  }
}