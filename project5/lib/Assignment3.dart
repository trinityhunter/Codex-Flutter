import 'package:flutter/material.dart';
import 'package:project5/Container_Images.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Container Image With Horizontal Scroll", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 175, 175),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
