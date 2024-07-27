import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project8/BookScreen.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 180,
              width: double.infinity,
              color: Color(0xFF001118),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Rent a House",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      "images/Resort.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(300, 70),
                          topRight: Radius.elliptical(300, 70),
                        ),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 72,
                          ),
                          Text(
                            "for you.",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: 151,
              color: Colors.white,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Reservation Now",
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF04242F)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      fixedSize: MaterialStateProperty.all(Size(178, 56)),
                    ),
                    onPressed: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) => Bookscreen()))
                    },
                    child: Text(
                      "BOOK NOW",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
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
