import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

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
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
              Container(
                height: 200,
                width: 100,
                color: Colors.red,
                margin: EdgeInsets.only(top: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
