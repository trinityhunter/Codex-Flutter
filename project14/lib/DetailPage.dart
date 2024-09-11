import 'package:flutter/material.dart';
import 'package:project14/DetailContainer.dart';
import 'package:project14/USerModel.dart';

class Detailpage extends StatelessWidget {
  final UserModel user;

  const Detailpage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail Screen"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          DetailContainer(
              title: "Name", data: user.name, address: user.address),
          DetailContainer(
              title: "Username", data: user.username, address: user.address),
          DetailContainer(
              title: "Email", data: user.email, address: user.address),
          DetailContainer(
              title: "Phone", data: user.phone, address: user.address),
          DetailContainer(
              title: "Website", data: user.website, address: user.address),
        ],
      ),
    );
  }
}
