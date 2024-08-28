import 'package:codexui/CourseList.dart';
import 'package:codexui/CoursePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursecontainer extends StatelessWidget {
  final String title;

  final String imgUrl;

  final bool flag;

  final int index;

  const Coursecontainer(
      {super.key,
      required this.title,
      required this.imgUrl,
      required this.flag,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Coursepage(
                courseData: courseList[index]["topic"],
              ),
            ));
      },
      child: Container(
        height: 221,
        width: 183,
        margin: EdgeInsets.only(right: 30, top: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: flag
              ? LinearGradient(
                  colors: [
                    Color(0xFF7C84E9),
                    Color.fromARGB(255, 218, 70, 70),
                  ],
                  stops: [0.1, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment(0.0, 0.3),
                )
              : LinearGradient(
                  colors: [
                    Color.fromARGB(255, 224, 144, 144),
                    Color.fromARGB(255, 218, 70, 70),
                  ],
                  stops: [0.1, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment(0.0, 0.3),
                ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              title,
              style: GoogleFonts.anekTamil(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              height: 98,
              width: 134,
              child: Image.asset(imgUrl),
            )
          ],
        ),
      ),
    );
  }
}
