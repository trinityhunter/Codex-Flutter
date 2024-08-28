import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_highlighter/themes/github.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailscreen extends StatelessWidget {
  final Map<String, dynamic> courseTopic;

  const Detailscreen({
    super.key,
    required this.courseTopic,
  });

  @override
  Widget build(BuildContext context) {
    // print(courseTopic["topicName"].toString().substring(courseTopic["topicName"].toString().length-4));
    return Scaffold(
      backgroundColor: const Color(0xFF9B89CE),
      body: SingleChildScrollView(
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
                        margin: const EdgeInsets.only(top: 50),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10, left: 10),
                        child: Text(
                          courseTopic["topicName"].toString().substring(
                              courseTopic["topicName"].toString().length - 4),
                          style: GoogleFonts.jost(
                            fontWeight: FontWeight.w600,
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Full Stack",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 156,
                    width: 156,
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                        "images/${courseTopic["topicName"].toString().substring(courseTopic["topicName"].toString().length - 4)}.png"),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
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
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Text(
                      courseTopic["topicName"],
                      style: GoogleFonts.anekTamil(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "What is ${courseTopic["topicName"].toString().substring(courseTopic["topicName"].toString().length - 4)}",
                              style: GoogleFonts.anekTamil(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 45, top: 20),
                        child: Text(
                          courseTopic["topicDescription"],
                          style: GoogleFonts.anekTamil(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20),
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "${courseTopic["topicName"].toString().substring(courseTopic["topicName"].toString().length - 4)} is Platform Independent",
                              style: GoogleFonts.anekTamil(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 45, top: 20),
                        child: Text(
                          courseTopic["topicDescription"],
                          style: GoogleFonts.anekTamil(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: courseTopic["code"].length,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Code ${index + 1} :",
                                  style: GoogleFonts.anekTamil(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 20),
                                  height: 135,
                                  child: HighlightView(
                                    courseTopic["code"][index],
                                    textStyle: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    language: "java",
                                    theme: githubTheme,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
