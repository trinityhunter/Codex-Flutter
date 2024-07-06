import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Demo"
        ),
        backgroundColor: Color.fromARGB(255, 145, 145, 209),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: Text("Demo"),
          color: Colors.green,
        ),
      ),

    );
  }
}
