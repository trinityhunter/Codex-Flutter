import 'package:flutter/material.dart';
import 'package:project7/Inkwell2.dart';

class Inkwell1 extends StatelessWidget {
  const Inkwell1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Inkwell Screen 1"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Inkwell2()));
          },
          child: Container(
            height: 200,
            width: 200,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
