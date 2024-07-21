import 'package:flutter/material.dart';
import 'package:instagram/InstagramStoryCircularComponent.dart';

class Instagramstorycomponent extends StatelessWidget {
  const Instagramstorycomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
            Instagramstorycircularcomponent(),
          ],
        ),
      ),
    );
  }
}
