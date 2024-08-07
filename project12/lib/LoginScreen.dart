import 'package:flutter/material.dart';
import 'package:project12/HomeScreen.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginformState();
}

class _LoginformState extends State<Loginscreen> {
  final _nameController = TextEditingController();

  // String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(
              child: Text(
                "Login",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 300,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: TextField(
                  controller: _nameController,
                  // onChanged: (value) {
                  //   name = value;

                  //   setState(() {

                  //   });
                  // },
                  decoration: InputDecoration(
                    hintText: "Name",
                  ),
                  
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (Context) =>
                              Homescreen(name: _nameController.text)));
                  // Homescreen(name: name)));
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
