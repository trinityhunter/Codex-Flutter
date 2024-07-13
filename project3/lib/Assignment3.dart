import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROW"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        color: const Color.fromARGB(255, 224, 112, 150),
        width: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(
                  color: Colors.black,
                  width: 2
                )
              ),
            ),
            Text("TEXT")
          ],
        ),
      ),
    );
  }
}
