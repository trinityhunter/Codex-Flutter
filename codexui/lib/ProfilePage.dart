import 'package:codexui/CourseList.dart';
import 'package:codexui/HomePage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9F9F9),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Profile",
                style: GoogleFonts.dmSans(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              // margin: EdgeInsets.all(10),
              // padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 89,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffB3B1F6),
              ),
              child: Container(
                // margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Container(
                      height: 53,
                      width: 53,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          border: Border.all(width: 2, color: Colors.white),
                          image: DecorationImage(
                              image: AssetImage("images/User.png"))),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Itunuoluwa Abidoye",
                            style: GoogleFonts.dmSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text("@Itunuoluwa",
                              style: GoogleFonts.dmSans(
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffD7D7D7),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 110),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit_outlined,
                            color: Colors.white,
                            size: 28,
                          )),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              height: 350,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  height: 360,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: iconData.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 310.98,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                iconbuttonData[index],
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        child: Text(
                                          profileData[index]["info"],
                                          style: GoogleFonts.dmSans(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          profileData[index]["infoDescription"],
                                          style: GoogleFonts.dmSans(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            index == 0
                                ? Image.asset("images/Error.png")
                                : Container(),
                            index == 2
                                ? Image.asset("images/Toggle.png")
                                : Icon(
                                    iconData[index],
                                    color: Color(0xffABABAB),
                                    size: 11.68,
                                  )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "More",
                style: GoogleFonts.dmSans(
                    fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10, top: 20, left: 10),
              height: 139,
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Center(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.notifications_outlined,
                                        color: Color.fromARGB(255, 3, 19, 193),
                                        size: 40,
                                      )),
                                  Text(
                                    'Help & Support',
                                    style: GoogleFonts.dmSans(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xffABABAB),
                                size: 11.68,
                              ),
                            ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Color.fromARGB(255, 3, 19, 193),
                                    size: 40,
                                  )),
                              Text(
                                'About App',
                                style: GoogleFonts.dmSans(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Color(0xffABABAB),
                            size: 11.68,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
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
          if (i == 0) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homepage()));
          }
        },
        backgroundColor: Color.fromRGBO(44, 55, 149, 0.67),
        initialActiveIndex: 4,
      ),
    );
  }
}