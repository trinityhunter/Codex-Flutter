import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categorycard extends StatelessWidget {
  final String imgUrl;

  final String title;

  final String location;

  const Categorycard(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      // decoration: BoxDecoration(
      //     // color: Colors.amber,
      //     borderRadius: BorderRadius.all(Radius.circular(20)),
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.grey.withOpacity(0.5),
      //         spreadRadius: 5,
      //         blurRadius: 7,
      //         offset: Offset(5, 5),
      //       )
      //     ]),
      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black, width: 0.1),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // boxShadow: [
        //   BoxShadow(
        //     color: Color.fromRGBO(0, 0, 0, 0.1),
        //     offset: Offset(5, 5),
        //     blurRadius: 10,
        //   )
        // ],
      ),
      child: SizedBox(
        height: 322,
        width: 365,
        child: Column(
          children: [
            Container(
              height: 235,
              width: 340,
              child: Image.asset(imgUrl),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.poppins(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Rp. 249.000 / Night",
                        style: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        child: Image.asset("images/Vector.png"),
                      ),
                      Text(
                        location,
                        style: GoogleFonts.poppins(
                            color: Color(0xFF0983B5),
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset("images/Vector-2.png"),
                      ),
                      Text(
                        "All Inclusive",
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 15,
                        width: 15,
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset("images/Vector-3.png"),
                      ),
                      Text(
                        "Free Wifi",
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 15,
                        width: 15,
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset("images/Vector-4.png"),
                      ),
                      Text(
                        "Free Consultaion",
                        style: GoogleFonts.poppins(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
