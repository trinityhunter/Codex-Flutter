import 'package:flutter/material.dart';
import 'package:project11/OrderCard.dart';
import 'package:project11/ProductType.dart';
import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 243, 243, 243),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.only(top: 50, left: 30, right: 30),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [Color(0xFF131313), Color(0xFF313131)],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFB7B7B7)),
                            ),
                            Text(
                              "Bilzen, Tanjungbalai V",
                              style: GoogleFonts.sora(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFDDDDDD)),
                            )
                          ],
                        ),
                        Container(
                          height: 44,
                          width: 44,
                          child: Image.asset("images/Image.png"),
                        )
                      ],
                    ),
                    Container(
                      height: 150,
                      width: 750,
                      margin: EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "images/Frame17.png",
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Producttype(title: "Cappuccino", isDefault: true),
                          Producttype(title: "Machiato", isDefault: false),
                          Producttype(title: "Latte", isDefault: false),
                          Producttype(title: "Americano", isDefault: false),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ordercard(
                        title: "Cappucino",
                        subtitle: "with Chocolate",
                        imgUrl: "images/Rectangle2.png",
                        price: 4.53,
                        rating: 4.8),
                    Ordercard(
                        title: "Cappucino",
                        subtitle: "with Oat Milk",
                        imgUrl: "images/Rectangle4.png",
                        price: 3.90,
                        rating: 4.9),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ordercard(
                        title: "Cappucino",
                        subtitle: "with Chocolate",
                        imgUrl: "images/Rectangle1.png",
                        price: 4.53,
                        rating: 4.5),
                    Ordercard(
                        title: "Cappucino",
                        subtitle: "with Oat Milk",
                        imgUrl: "images/Rectangle3.png",
                        price: 4.53,
                        rating: 4.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
