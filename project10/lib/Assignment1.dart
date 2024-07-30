import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  const Assignment1({super.key});

  @override
  State<Assignment1> createState() => _Assignment1State();
}

class _Assignment1State extends State<Assignment1> {
  int _counter = 0;

  void _incrementCounter() {
    _counter++;

    setState(() {});
  }

  Widget count1() {
    return Text("Raviraj Bhosale");
  }

  Widget count2() {
    return Container(
      height: 300,
      width: 300,
      child: Image.network(
          "https://tse2.mm.bing.net/th?id=OIP.bz3JOitzMOIgDIVYprTGvwHaF7&pid=Api&P=0&h=220"),
    );
  }

  Widget count3() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Technologies"),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("ReactJS"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("NodeJS"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("Spring Boot"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("ML"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("ExpressJS"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
              margin: EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text("MongoDB"),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Raviraj Bhosale"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              _counter >= 1 ? count1() : Container(),
              _counter >= 2 ? count2() : Container(),
              _counter >= 3 ? count3() : Container()
          
            ],
          ),
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
