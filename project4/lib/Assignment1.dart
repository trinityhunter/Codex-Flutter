import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROW"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(left: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
