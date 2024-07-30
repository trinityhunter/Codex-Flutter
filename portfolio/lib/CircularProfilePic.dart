import 'package:flutter/material.dart';

class Circularprofilepic extends StatelessWidget {
  final String imgUrl;

  const Circularprofilepic({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      margin: EdgeInsets.only(top: 40),
      child: Image.asset(imgUrl),
    );
  }
}
