import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROW"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Container(
          height: 600,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2
            )
          ),
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
      ),
    );
  }
}
