import 'package:flutter/material.dart';
import 'Assignment6.dart';
import 'Assignment5.dart';
import 'InstagramPostComponent.dart';
import 'InstagramStoryCircularComponent.dart';

class Assignment7 extends StatelessWidget {
  const Assignment7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INSTAGRAM"),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SingleChildScrollView(
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
            ),
            SingleChildScrollView(
              child: Column(
              children: [
              Instagrampostcomponent(),
              Instagrampostcomponent(),
              Instagrampostcomponent(),
              Instagrampostcomponent(),
              Instagrampostcomponent(),
                        ],),
          )
          ],
        ),
      ),

    );
  }
}
