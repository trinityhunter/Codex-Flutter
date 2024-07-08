import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROW ASSIGNMENT 5", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 35, 32, 198),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          color: Color.fromARGB(255, 244, 185, 205),
          child: Center(
            child: Container(
              height: 200,
              width: 350,
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
