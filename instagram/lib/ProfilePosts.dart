import 'package:flutter/material.dart';

class Profileposts extends StatelessWidget {
  final String imgUrl;

  const Profileposts({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 135,
          width: 135,
          margin: EdgeInsets.all(1),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 135,
          width: 135,
          margin: EdgeInsets.all(1),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 135,
          width: 135,
          margin: EdgeInsets.all(1),
          child: Image.asset(
            imgUrl,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
