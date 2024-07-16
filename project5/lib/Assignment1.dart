import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Container Image", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 209, 225),
        child: Center(
          child: Container(
            width: 500,
            height: 400,
            child: Image.network("https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTy5RYAuojXDARoaPBmukXLHj44QNn5dU4SzohSvzsobU4jFwh6"),
          ),
        ),
      ),
    );
  }
}
