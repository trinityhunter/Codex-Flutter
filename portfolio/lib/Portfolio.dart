import 'package:flutter/material.dart';
import 'package:portfolio/CircularProfilePic.dart';
import 'package:portfolio/LangContainer.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int count = 0;

  Widget getName() {
    return count >= 1 ? Text("Andrew Rubin", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),) : Container();
  }

  Widget getProfilePic() {
    return count >= 2
        ? Circularprofilepic(imgUrl: "images/Ellipse2.png")
        : Container();
  }

  Widget getAbout() {
    return count >= 3
        ? Container(
            width: 400,
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About Me : ", style: TextStyle(fontSize: 16),),
                Text(
                    "       Hello I am Andrew Rubin and I'm the founder of Android Operating System", style: TextStyle(fontSize: 16))
              ],
            ),
          )
        : Container();
  }

  Widget getLanguages() {
    return count >= 4
        ? Container(
            width: 400,
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Languages : ", style: TextStyle(fontSize: 16)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Langcontainer(imgUrl: "images/Rectangle2.png"),
                      Langcontainer(imgUrl: "images/Rectangle4.png"),
                      Langcontainer(imgUrl: "images/Rectangle6.png"),
                      Langcontainer(imgUrl: "images/Rectangle2.png"),
                      Langcontainer(imgUrl: "images/Rectangle4.png"),
                      Langcontainer(imgUrl: "images/Rectangle6.png"),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container();
  }

  Widget getTechnologies() {
    return count >= 5
        ? Container(
            width: 400,
            margin: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Technologies : ", style: TextStyle(fontSize: 16)),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Langcontainer(imgUrl: "images/Rectangle7.png"),
                      Langcontainer(imgUrl: "images/Rectangle8.png"),
                    ],
                  ),
                )
              ],
            ),
          )
        : Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Portfolio"),
        backgroundColor: Color(0xFFD9D9D9),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 30, left: 40, right: 40),
        child: Column(
          children: [
            getName(),
            getProfilePic(),
            getAbout(),
            getLanguages(),
            getTechnologies(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          setState(() {});
        },
        backgroundColor: Color(0xFF553BF8),
        shape: CircleBorder(),
        child: Text(
          "+",
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}