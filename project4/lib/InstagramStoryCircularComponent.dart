import 'package:flutter/material.dart';

class Instagramstorycircularcomponent extends StatelessWidget {
  const Instagramstorycircularcomponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.purple,
          width: 5,
        ),
      ),
      child: ClipOval(
        child: Image.network(
          "https://image.tmdb.org/t/p/original/w2pZ8gLqZNguj8cqrDGbMw2Ibj0.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
