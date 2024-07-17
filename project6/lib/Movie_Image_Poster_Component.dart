import 'package:flutter/material.dart';

class MovieImagePosterComponent extends StatelessWidget {
  final String imageUrl;

  const MovieImagePosterComponent({
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 250,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
