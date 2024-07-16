import 'package:flutter/material.dart';
import 'InstagramPostComponent.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("INSTAGRAM"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
            Instagrampostcomponent(),
            Instagrampostcomponent(),
            Instagrampostcomponent(),
            Instagrampostcomponent(),
            Instagrampostcomponent(),
          ],),
        )
        ),
    );
  }
}
