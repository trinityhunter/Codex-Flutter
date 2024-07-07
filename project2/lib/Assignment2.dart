import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.cyan,
        
        leading: Icon(Icons.battery_full),
        title: Text("Demo"),
        actions: [
          Icon(Icons.mail)
        ],
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
          )
        ],
      ),
      )

    );
  }
}
