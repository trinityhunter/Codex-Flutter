import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {

  final String imgUrl;

  const Mycontainer({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.all(20),
      color: Colors.amber,
      child: Image.network(
        imgUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
