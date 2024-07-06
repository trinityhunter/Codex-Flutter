import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        backgroundColor: Color.fromARGB(255, 155, 155, 218),
      ),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
