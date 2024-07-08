import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ROW ASSIGNMENT 6",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 35, 32, 198),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
          color: Color.fromARGB(255, 244, 185, 205),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 125,
                  width: 175,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 175,
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
