import 'package:flutter/material.dart';
import 'package:project5/Circular_Container_Images.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Box Decoration Image", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 189, 189),
        child: Center(
          child: CircularContainerImages()
        ),
      ),
    );
  }
}
