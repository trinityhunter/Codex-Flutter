import 'package:codexui/CourseContainer.dart';
import 'package:codexui/CourseList.dart';
import 'package:codexui/ProfilePage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 320,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 55, 149, 0.67),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(157.5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 90,
                    width: 112,
                    child: Image.asset("images/Icon.png"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            "Hi, Raviraj",
                            style: GoogleFonts.jost(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w600),
                          )),
                      Container(
                          margin: EdgeInsets.only(left: 15, top: 5),
                          child: Text(
                            "Hope You Are Doing Fine",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Courses For You",
                    style: GoogleFonts.anekTamil(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        height: 210,
                        width: 450,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: courseList.length,
                            itemBuilder: (context, index) {
                              return Coursecontainer(
                                title: courseList[index]["courseName"],
                                imgUrl: courseList[index]["courseImage"],
                                flag: index % 2 == 0 ? true : false,
                                index: index,
                              );
                            }),
                      ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 25, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Upcoming Courses",
                    style: GoogleFonts.anekTamil(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Container(
                      height: 157,
                      width: 433,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          colors: [
                            // Color.fromARGB(255, 224, 144, 144),
                            // Color.fromARGB(255, 218, 70, 70),
                            Color(0xffF28D8D),
                            Color.fromARGB(255, 148, 60, 60),
                          ],
                          stops: [0.1, 1.0],
                          begin: Alignment.topCenter,
                          end: Alignment(0.0, 0.3),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "9th March 2024",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "10 am - 12 am",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Color(0xff2B89C9),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Center(
                                  child: Text(
                                    "Join Demo",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Flutter App Development",
                            style: GoogleFonts.anekTamil(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      )),
                  Container(
                      height: 157,
                      width: 433,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffF28D8D),
                            Color.fromARGB(255, 148, 60, 60),
                          ],
                          stops: [0.1, 1.0],
                          begin: Alignment.topCenter,
                          end: Alignment(0.0, 0.3),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "11th March 2024",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "1 pm - 3 pm",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Color(0xff2B89C9),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Center(
                                  child: Text(
                                    "Join Demo",
                                    style: GoogleFonts.anekTamil(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            "Java Full Stack Development",
                            style: GoogleFonts.anekTamil(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        onTap: (int i) {
          if (i == 4) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profilepage()));
          }
        },
        backgroundColor: Color.fromRGBO(44, 55, 149, 0.67),
      ),
    );
  }
}