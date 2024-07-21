import 'package:flutter/material.dart';
import 'package:instagram/InstagramStoryComponent.dart';
import 'package:instagram/PostComponent.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Instagram", style: TextStyle(color: Colors.white, fontSize: 30, fontStyle: FontStyle.italic),),
              Container(
                width: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border_sharp, color: Colors.white, size: 30,),
                    Icon(Icons.message_outlined, color: Colors.white, size: 30,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Instagramstorycomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
              Postcomponent(),
            ],
          ),
        )
      ),
    );
  }
}
