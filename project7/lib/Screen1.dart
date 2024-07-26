import 'package:flutter/material.dart';
import 'package:project7/Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  final String name = "Raviraj";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Screen 1"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => Screen2(name: "Ravi")
                              )
                          )
                    },
                child: Text("Navigate")),
            Text("This is ${name}")
          ],
        ),
      ),
    );
  }
}
