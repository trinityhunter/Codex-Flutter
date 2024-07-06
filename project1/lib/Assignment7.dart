import 'package:flutter/material.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
        backgroundColor: Color.fromARGB(255, 179, 179, 247),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.green,
          child: Center(child: Text("Demo"),),
        ),
      ),
    );
  }
}
