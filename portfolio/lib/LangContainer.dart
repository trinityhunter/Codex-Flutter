import 'package:flutter/material.dart';

class Langcontainer extends StatelessWidget {
  final String imgUrl;

  const Langcontainer({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.only(right: 20, top: 20),
      child: Image.asset(imgUrl, fit: BoxFit.cover,),
    );
  }
}
