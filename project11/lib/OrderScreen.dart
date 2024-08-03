import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Orderscreen extends StatefulWidget {
  const Orderscreen({super.key});

  @override
  State<Orderscreen> createState() => _OrderscreenState();
}

class _OrderscreenState extends State<Orderscreen> {
  String title = "Cappucino";

  String subtitle = "with Chocolate";

  double price = 4.53;

  int quantity = 1;

  double totalPrice = 5.53;

  void handleDecrement() {
    if (quantity == 1) {
      return;
    }

    quantity--;

    totalPrice -= price;

    totalPrice = double.parse(totalPrice.toStringAsPrecision(3)); 

    setState(() {});
  }

  void handleIncrement() {
    quantity++;

    totalPrice += price;

    totalPrice = double.parse(totalPrice.toStringAsPrecision(2)); 

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            AppBar(
                centerTitle: true,
                automaticallyImplyLeading: false,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset("images/arrow-left.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 125),
                      child: Text(
                        "Order",
                        style: GoogleFonts.sora(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )),
            Container(
              height: 60,
              width: 320,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 150,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xFFC67C4E),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        "Deliver",
                        style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: Center(
                      child: Text(
                        "Pick Up",
                        style: GoogleFonts.sora(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF2F2D2C)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 320,
              margin: EdgeInsets.only(top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Delivery Address",
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2F2D2C)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Jl. Kpg Sutoyo",
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF303336)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF808080)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFDEDEDE)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/EditSquare.png"),
                              Text(
                                "  Edit Address",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF303336)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          padding: EdgeInsets.only(left: 20, right: 20),
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFDEDEDE)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("images/Document.png"),
                              Text(
                                "  Add Note",
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF303336)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Divider(
                color: Color(0xFFEAEAEA),
                thickness: 1,
              ),
            ),
            Container(
              height: 55,
              width: 315,
              child: Row(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 54,
                        width: 54,
                        child: Image.asset("images/Rectangle2.png"),
                      ),
                      Container(
                        height: 54,
                        width: 154,
                        margin: EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.sora(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              subtitle,
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF9B9B9B)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          handleDecrement();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFEAEAEA)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "-",
                              style: GoogleFonts.sora(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Text(
                            "${quantity}",
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F2D2C)),
                          )),
                      InkWell(
                        onTap: () {
                          handleIncrement();
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFFEAEAEA)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Center(
                            child: Text(
                              "+",
                              style: GoogleFonts.sora(fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 15),
              child: Divider(
                color: Color(0xFFF4F4F4),
                thickness: 4,
              ),
            ),
            Container(
              height: 60,
              width: 315,
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFEAEAEA)),
                  borderRadius: BorderRadius.all(Radius.circular(14))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        child: Image.asset("images/Discount.png"),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text("1 Discount is applied",
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F2D2C))),
                      )
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    child: Image.asset("images/arrow-right.png"),
                  )
                ],
              ),
            ),
            Container(
              width: 315,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Payment Summary",
                      style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2F2D2C)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Price",
                          style: GoogleFonts.sora(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "\$ ${price}",
                        style: GoogleFonts.sora(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Delivery Fee",
                          style: GoogleFonts.sora(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 5),
                              child: Text(
                                "\$ 2",
                                style: GoogleFonts.sora(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.lineThrough),
                              )),
                          Text(
                            "\$ 1",
                            style: GoogleFonts.sora(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xFFEAEAEA),
              thickness: 1,
            ),
            Container(
              width: 315,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Total Payment",
                          style: GoogleFonts.sora(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                      Text(
                        "\$ ${totalPrice}",
                        style: GoogleFonts.sora(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 315,
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5),
                        child: Image.asset("images/moneys.png"),
                      ),
                      Container(
                        height: 25,
                        width: 115,
                        decoration: BoxDecoration(
                            color: Color(0xFFF6F6F6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 51,
                              decoration: BoxDecoration(
                                  color: Color(0xFFC67C4E),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  "Cash",
                                  style: GoogleFonts.sora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFFFFFFFF)),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "\$ ${totalPrice}",
                                    style: GoogleFonts.sora(
                                        fontSize: 12, color: Color(0xFF2F2D2C)),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 25,
                    child: Image.asset("images/Vector.png"),
                  )
                ],
              ),
            ),
            Container(
              height: 65,
              width: 315,
              decoration: BoxDecoration(
                  color: Color(0xFFC67C4E),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Center(
                child: Text(
                  "Order",
                  style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
