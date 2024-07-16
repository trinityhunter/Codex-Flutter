import 'package:flutter/material.dart';
import 'InstagramStoryCircularComponent.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INSTAGRAM"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
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
          Instagramstorycircularcomponent(),
        ],
      ),
      )
    );
  }
}
