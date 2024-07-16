import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Box Decoration", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: const BorderRadius.all(Radius.circular(100))
          ),
        ),
      ),
    );
  }
}
