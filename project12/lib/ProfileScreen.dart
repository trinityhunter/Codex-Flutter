import 'package:flutter/material.dart';
import 'package:project12/Demo.dart';

class Profilescreen extends StatelessWidget {
  final String name;

  Profilescreen({super.key, required this.name});

  static Demo d = Demo(10, "Ravi");

  static Demo d1 = Demo(11, "Tejas");

  static Demo d2 = Demo(12, "Atharva");

  static Demo d3 = Demo(10, "Ravi");

  static Demo d4 = Demo(11, "Tejas");

  static Demo d5 = Demo(12, "Atharva");

  static Demo d6 = Demo(10, "Ravi");

  static Demo d7 = Demo(11, "Tejas");

  static Demo d8 = Demo(12, "Atharva");

  List<Demo> players = [d, d1, d2, d4, d5, d6, d7, d8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(name),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: players.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(10),
              color: Colors.amber,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("${players[index].age} "),
                    Text("${players[index].name}"),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
