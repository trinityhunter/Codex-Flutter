import 'package:flutter/material.dart';

class Addpostpage extends StatefulWidget {
  const Addpostpage({super.key});

  @override
  State<Addpostpage> createState() => _AddpostpageState();
}

class _AddpostpageState extends State<Addpostpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Post Page"),
      ),
    );
  }
}
