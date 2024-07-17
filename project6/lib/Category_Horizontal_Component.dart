import 'package:flutter/material.dart';
import 'movie_image_poster_component.dart';

class CategoryHorizontalComponent extends StatelessWidget {
  final String title;
  final List<String> imageUrls;

  const CategoryHorizontalComponent({
    required this.title,
    required this.imageUrls,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: Colors.white)),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Row(
            children: imageUrls.map((url) => MovieImagePosterComponent(imageUrl: url)).toList(),
          ),
        ),
      ],
    );
  }
}
