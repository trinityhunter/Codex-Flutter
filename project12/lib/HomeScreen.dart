import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  final String name;

  const Homescreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 250,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 10, top: 80, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(40))),
                  ),
                  Text("Profile")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.settings,
                    size: 50,
                  ),
                  Text("Settings")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.settings, size: 50), Text("Settings")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.settings, size: 50), Text("Settings")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(Icons.logout, size: 50), Text("Logout")],
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 200, width: 200, color: Colors.amber),
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 140, 242, 255),
                child: Center(
                  child: Text(name),
                ),
              ),
            ),
            Container(
                height: 200,
                width: 200,
                color: Color.fromRGBO(77, 255, 172, 1)),
          ],
        ),
      ),
    );
  }
}
