import 'package:flutter/material.dart';
import 'package:project14/DetailContainer.dart';

class Addresspage extends StatelessWidget {
  final Map<String, dynamic> address;

  const Addresspage({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Address Screen"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          DetailContainer(
              title: "Street", data: address["street"], address: address),
          DetailContainer(
              title: "Suite", data: address["suite"], address: address),
          DetailContainer(
              title: "City", data: address["city"], address: address),
          DetailContainer(
              title: "Zipcode", data: address["zipcode"], address: address),
        ],
      ),
    );
  }
}
