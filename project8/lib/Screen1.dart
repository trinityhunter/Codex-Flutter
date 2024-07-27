import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project8/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Screen 1",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFFB55656),
      ),
      body: Container(
        color: Color(0xFF3D3939),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.only(bottom: 60),
                child: ClipOval(
                  child: Image.asset(
                    "images/Frame4.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(Color(0xFF0075FE)),
                      foregroundColor: WidgetStatePropertyAll(Colors.white)),
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (Context) => Screen2()))
                      },
                  child: Text("View Profile")),
            ],
          ),
        ),
      ),
    );
  }
}
