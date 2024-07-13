import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("COLUMN"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Text("Box 1"),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          ),
          Text("Box 2"),
          Container(
            height: 100,
            width: 100,
            color: Colors.blue,
          ),
          Text("Box 3"),
        ],
      ),
      )
    );
  }
}
