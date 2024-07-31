import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project11/HomeScreen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 550,
            width: double.infinity,
            child: Image.asset(
              "images/image3.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 293.4,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                Text(
                  "Coffee so good,",
                  style: GoogleFonts.sora(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "your taste buds",
                  style: GoogleFonts.sora(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "will love it.",
                  style: GoogleFonts.sora(
                      fontSize: 34,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "The best grain, the finest roast, the",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        color: Color(0xFFA9A9A9),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    "powerful flavor.",
                    style: GoogleFonts.sora(
                        fontSize: 14,
                        color: Color(0xFFA9A9A9),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => Homescreen()));
                  },
                  child: Container(
                    height: 62,
                    width: 315,
                    margin: EdgeInsets.only(top: 25),
                    decoration: BoxDecoration(
                        color: Color(0xFFC67C4E),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Center(
                        child: Text(
                      "Get Started",
                      style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
