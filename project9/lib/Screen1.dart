import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool boxColor = false;

  void changeColor() {
    boxColor ? boxColor = false : boxColor = true;

    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300,
                width: 300,
                color: boxColor ? Colors.green : Colors.red,
              ),
              ElevatedButton(
                  onPressed: changeColor, child: Text("Change Color"))
            ],
          ),
        ),
      ),
    );
  }
}
