import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("James Gosling", style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 46, 60, 251),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
        color: Color.fromARGB(255, 255, 195, 195),
        child: Column(
          children: [
            Container(
              height: 450,
              width: 400,
              child: Image.network("https://cdn.facesofopensource.com/wp-content/uploads/2019/12/23003006/jamesgosling1642web.jpg", fit: BoxFit.cover,),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Text("James Gosling OC (born 19 May 1955) is a Canadian computer scientist, best known as the founder and lead designer behind the Java programming language.", style: TextStyle(fontSize: 17),)),
            Container(
              child: Text("Gosling was elected a member of the National Academy of Engineering in 2004 for the conception and development of the architecture for the Java programming language and for contributions to window systems.", style: TextStyle(fontSize: 17),))
          ],
        ),
      ),
    );
  }
}
