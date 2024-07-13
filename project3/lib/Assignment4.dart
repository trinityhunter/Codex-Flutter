import 'package:flutter/material.dart';

class Assignment4 extends StatelessWidget {
  const Assignment4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INSTAGRAM"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 242, 197, 17),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black, width: 2)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("TEXT")
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                color: const Color.fromARGB(255, 224, 112, 150),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.heart_broken_sharp),
                  SizedBox(
                    width: 20,
                  ),
                  Text("TEXT"),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.message)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
