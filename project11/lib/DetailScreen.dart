import 'package:flutter/material.dart';
import 'package:project11/OrderScreen.dart';
import 'package:project11/OrderSize.dart';
import 'package:google_fonts/google_fonts.dart';

class Detailscreen extends StatelessWidget {
  final String title;

  final String subtitle;

  final String imgUrl;

  final double price;

  final double rating;

  const Detailscreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imgUrl,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("images/arrow-left.png"),
                    ),
                    Text(
                      "Detail",
                      style:
                          GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      child: Container(
                          height: 25,
                          width: 25,
                          child: Image.asset("images/Heart.png")),
                    )
                  ],
                )),
            Container(
              height: 275,
              width: 550,
              child: Image.asset(
                imgUrl,
                fit: BoxFit.contain,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 10),
              // padding: EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: GoogleFonts.sora(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2F2D2C)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.only(left: 10),
              // padding: EdgeInsets.only(left: 20),
              child: Text(
                subtitle,
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9B9B)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 7),
              padding: EdgeInsets.only(left: 10),
              // padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          margin: EdgeInsets.only(right: 10),
                          child: Image.asset(
                            "images/star.png",
                            fit: BoxFit.cover,
                          )),
                      Text(
                        "${rating}",
                        style: GoogleFonts.sora(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " (230)",
                        style: GoogleFonts.sora(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Image.asset("images/Mask1.png"),
                      ),
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 226, 226),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Image.asset("images/Mask2.png"),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 168, 168, 168),
              thickness: 1,
            ),
            Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 10),
                // padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Description",
                  style: GoogleFonts.sora(fontSize: 22, fontWeight: FontWeight.w600),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              // padding: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              child: RichText(
                text: TextSpan(
                  text:
                      "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ",
                  style: GoogleFonts.sora(color: Color(0xFF9B9B9B), fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Read More',
                      style: GoogleFonts.sora(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFC67C4E)), // Change the color here
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              // padding: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Size",
                style: GoogleFonts.sora(
                    color: Color(0xFF2F2D2C),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              // padding: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Ordersize(size: "S", isSelected: false),
                  Ordersize(size: "M", isSelected: true),
                  Ordersize(size: "L", isSelected: false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              // padding: EdgeInsets.only(left: 20),
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: GoogleFonts.sora(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF9B9B9B)),
                      ),
                      Text(
                        "\$ ${price}",
                        style: GoogleFonts.sora(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC67C4E)),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (Context) => Orderscreen()));
                    },
                    child: Container(
                      height: 62,
                      width: 217,
                      decoration: BoxDecoration(
                          color: Color(0xFFC67C4E),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: GoogleFonts.sora(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
