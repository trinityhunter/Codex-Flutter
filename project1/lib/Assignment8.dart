import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        backgroundColor: Color.fromARGB(255, 139, 139, 218),
      ),
      body: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Color.fromARGB(255, 48, 255, 172),
          ),
          Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 181, 23, 147),
          )
        ],
      ),
    );
  }
}
