import 'package:flutter/material.dart';
import 'package:project11/DetailScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class Ordercard extends StatelessWidget {
  final String title;

  final String subtitle;

  final String imgUrl;

  final double price;

  final double rating;

  const Ordercard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imgUrl,
      required this.price,
      required this.rating});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (Context) => Detailscreen(title: title, subtitle: subtitle, imgUrl: imgUrl, price: price, rating: rating)));
      },
      child: Container(
        height: 250,
        width: 160,
        padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
        margin: EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Image.asset(
                      imgUrl,
                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset("images/star.png"),
                          Text(
                            "  ${rating}",
                            style: GoogleFonts.sora(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                title,
                style: GoogleFonts.sora(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2F2D2C)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                subtitle,
                style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF9B9B9B)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "\$ ${price}",
                    style: GoogleFonts.sora(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  height: 32,
                  width: 32,
                  margin: EdgeInsets.only(right: 10, top: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFC67C4E),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "+",
                      style: GoogleFonts.sora(fontSize: 20, color: Colors.white),
                    ),
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
