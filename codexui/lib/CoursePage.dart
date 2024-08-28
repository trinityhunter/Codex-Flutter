import 'package:codexui/DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coursepage extends StatelessWidget {
  const Coursepage({super.key, required this.courseData});

  final courseData;

  @override
  Widget build(BuildContext context) {
    // print(courseData[0]["topicName"].toString().substring(courseData[0]["topicName"].toString().length-4));
    return Scaffold(
      body: Container(
        color: Color(0xFF9B89CE),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new_sharp,
                                color: Colors.white,
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            courseData[0]["topicName"]
                                .toString()
                                .substring(courseData[0]["topicName"]
                                        .toString()
                                        .length -
                                    4)
                                .toUpperCase(),
                            style: GoogleFonts.jost(
                                fontWeight: FontWeight.w600,
                                fontSize: 40,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Full Stack",
                            style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 156,
                      width: 156,
                      margin: EdgeInsets.only(top: 20),
                      child: courseData[0]["topicName"]
                                  .toString()
                                  .substring(courseData[0]["topicName"]
                                          .toString()
                                          .length -
                                      4)
                                  .toUpperCase() ==
                              "MERN"
                          ? Image.asset("images/MERN.png")
                          : Image.asset("images/Java.png"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromRGBO(13, 18, 164, 1),
                            Color.fromRGBO(45, 22, 191, 0.831),
                            Color.fromRGBO(0, 0, 0, 1),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 594,
                width: 500,
                padding: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: courseData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 169,
                      width: 343,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color(0xffE2DEEA),
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(10, 10),
                                blurRadius: 10,
                                color: Colors.grey)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              courseData[index]["topicName"],
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              courseData[index]["topicDescription"],
                              style: GoogleFonts.inter(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff625F68)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2, left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "View More",
                                  style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Detailscreen(
                                              courseTopic: courseData[index],
                                            ),
                                          ));
                                    },
                                    icon: Icon(Icons.arrow_forward_ios_rounded))
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
