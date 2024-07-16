import 'package:flutter/material.dart';
import 'package:project5/Container_Images.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Container Images With Vertical Scroll",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 255, 167, 167),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
              ContainerImages(),
            ],
          ),
        ),
      ),
    );
  }
}
